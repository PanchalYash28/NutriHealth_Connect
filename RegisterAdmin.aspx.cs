using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class RegisterAdmin : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string isql;
    SqlCommand sqlcmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        txtAdminid.Text = DateTime.Now.ToString("P-yyMMdd-HHmmss");
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {

        isql = "INSERT INTO Admin VALUES ('"
                                        + txtAdminid.Text + "' , '"
                                        + txtuname.Text + "' , '"
                                        + txtpwd.Text + "')";

        sqlcmd = new SqlCommand(isql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Admin registered Successfully. Please Login";
        }
        finally
        {
            sqlcon.Close();
        }

    }
}