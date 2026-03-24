using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddDisease : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string isql;
    SqlCommand sqlcmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        txtDiseaseid.Text = DateTime.Now.ToString("D-yyMMdd-HHmmss");
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {

        isql = "INSERT INTO Diseases VALUES ('"
                                        + txtDiseaseid.Text + "' , '"
                                         + txtdname.Text + "' , '"
                                         + txtdesc.Text + "')";

        sqlcmd = new SqlCommand(isql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've added disease Successfully.";
        }
        finally
        {
            sqlcon.Close();
        }

    }
}