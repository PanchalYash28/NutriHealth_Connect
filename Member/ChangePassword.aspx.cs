using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_ChangePassword : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string usql, ssql, mid;
    SqlCommand sqlcmd;
    SqlDataReader sqlrdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");

        mid = Session["Mid"].ToString();
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        usql = "UPDATE Member SET Password = '" + txtpwd.Text
                + "' where memberid = '" + mid + "' AND emailid ='" + Session["Email"].ToString() + "'";

        sqlcmd = new SqlCommand(usql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've Changed Password Successfully.";
        }
        finally
        {
            sqlcon.Close();
        }
    }
    protected void txtopwd_TextChanged(object sender, EventArgs e)
    {
        string opwd = "";
        ssql = "SELECT password FROM Member WHERE memberid = '" + mid + "'";

        sqlcmd = new SqlCommand(ssql, sqlcon);
        try
        {
            sqlcon.Open();
            sqlrdr = sqlcmd.ExecuteReader();
            while (sqlrdr.Read())
            {
                opwd = sqlrdr.GetString(0);
                //Response.Write(opwd);
            }
            sqlrdr.Close();
        }
        catch (Exception e1)
        {
            lblmsg.Text = "Error :" + e1.Message;
        }
        finally
        {
            sqlcon.Close();
        }


        if (txtopwd.Text.Equals(opwd))
        {
            lblmsg.Text = "Go Ahead, Change Your Password";
            txtpwd.Focus();
            txtopwd.TextMode = TextBoxMode.SingleLine;
            txtopwd.Text = "Your Old Password is Correct";
        }
        else
        {
            lblmsg.Text = "Enter Correct Old Password";
            txtopwd.Focus();

        }
    }
}