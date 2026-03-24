using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddAssestmentRecord : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string isql;
    SqlCommand sqlcmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        txtARid.Text = "AR-" + DateTime.Now.ToString("yyMMdd-HHmmss");
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {

        isql = "INSERT INTO AssestmentRecord VALUES ('"
                                           + txtARid.Text + "' , '"
                                            + ddlPid.SelectedValue + "' , "
                                            + txtCcal.Text + " , '"
                                            + txtAllergy.Text + "' , '"
                                            + txtOperation.Text + "' , '"
                                            + txtPresentHistory.Text + "' , '"
                                            + txtFamilyHistory.Text + "' , '"
                                            + txtMainComplaint.Text + "' , '"
                                            + ddlDisease.SelectedValue + "')";

        sqlcmd = new SqlCommand(isql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've added Assestment Record Successfully.";
        }
        finally
        {
            sqlcon.Close();
        }

    }
}