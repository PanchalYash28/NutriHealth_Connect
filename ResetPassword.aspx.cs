using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class ResetPassword : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblEmail.Text = Request.QueryString["email"];
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        if (txtNewPwd.Text == txtConfirmPwd.Text)
        {
            string email = lblEmail.Text;
            string newPassword = txtNewPwd.Text;

            // Update password in DB
            SqlConnection con = new SqlConnection("your_connection_string");
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Member SET Password=@pwd WHERE Email=@Email", con);
            cmd.Parameters.AddWithValue("@pwd", newPassword);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.ExecuteNonQuery();
            con.Close();

            lblStatus.Text = "Password reset successfully.";
        }
        else
        {
            lblStatus.Text = "Passwords do not match.";
        }
    }
}
