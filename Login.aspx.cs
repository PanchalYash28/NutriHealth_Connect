using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string sql;
    SqlCommand sqlcmd;
    SqlDataAdapter da;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        try
        {
            sql = "Select memberid, firstname, lastname, emailid from Member where username = @username and password = @password";
            sqlcmd = new SqlCommand(sql, sqlcon);
            sqlcmd.Parameters.AddWithValue("@username", txtuname.Text);
            sqlcmd.Parameters.AddWithValue("@password", txtpwd.Text);
            sqlcmd.CommandType = CommandType.Text;
            sqlcon.Open();
            da = new SqlDataAdapter(sqlcmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows[0]["memberid"] == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session["Mid"] = dt.Rows[0]["memberid"];
                Session["Fname"] = dt.Rows[0]["firstname"];
                Session["Lname"] = dt.Rows[0]["lastname"];
                Session["Email"] = dt.Rows[0]["emailid"];
                Response.Redirect("~/Member/Home.aspx");
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "You've entered wrong login details";
        }

        finally
        {
            sqlcon.Close();
        }
    }
}