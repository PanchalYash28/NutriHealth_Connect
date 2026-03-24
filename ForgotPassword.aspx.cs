using System;
using System.Net;
using System.Net.Mail;
using System.Web.UI;

public partial class ForgotPassword : Page
{
    static string generatedOTP;

    protected void btnSendOTP_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();

        // Check from DB if email exists
        // Example (use your own DB logic):
        // bool exists = CheckEmailExists(email);

        // For demo: assume email is valid
        bool exists = true;

        if (exists)
        {
            generatedOTP = GenerateOTP();
            SendEmail(email, generatedOTP);
            lblMessage.Text = "OTP sent to your email.";
        }
        else
        {
            lblMessage.Text = "Email not found.";
        }
    }

    protected void btnVerify_Click(object sender, EventArgs e)
    {
        if (txtOTP.Text.Trim() == generatedOTP)
        {
            Response.Redirect("ResetPassword.aspx?email=" + txtEmail.Text.Trim());
        }
        else
        {
            lblMessage.Text = "Invalid OTP.";
        }
    }

    private string GenerateOTP()
    {
        Random rnd = new Random();
        return rnd.Next(100000, 999999).ToString();
    }

    private void SendEmail(string toEmail, string otp)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("youremail@example.com");
        msg.To.Add(toEmail);
        msg.Subject = "Your OTP for Password Reset";
        msg.Body = string.Format("Your OTP is: {0}", otp);


        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.Credentials = new NetworkCredential("youremail@example.com", "yourpassword");
        client.EnableSsl = true;

        client.Send(msg);
    }
}
