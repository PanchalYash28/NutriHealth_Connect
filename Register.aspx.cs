using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string isql;
    SqlCommand sqlcmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        txtMemberid.Text= DateTime.Now.ToString("P-yyMMdd-HHmmss");
        txtMRDate.Text = DateTime.Now.ToString("dd-MMM-yyyy");
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        int ft = Convert.ToInt32(ddlFoot.SelectedValue);
        int inch = Convert.ToInt32(ddlInch.SelectedValue);
        int ht = (ft * 12) + inch;
        
        string gen = "";
        if (rdm.Checked)
        {
            gen = "Male";
        }
        if (rdf.Checked)
        {
            gen = "Female";
        }
        isql = "INSERT INTO Member VALUES ('"
                                   + txtMemberid.Text + "' , '"
                                    + txtfname.Text + "' , '"
                                    + txtlname.Text + "' , '"
                                    + txtbdate.Text + "' , "
                                    + txtage.Text + " , '"
                                    + gen + "' , '"
                                    + txtaddress.Text + "' , '"
                                    + txtcity.Text + "' , '"
                                    + txtstate.Text + "' , '"
                                    + txtpin.Text + "' , '"
                                    + txtoccup.Text + "' , '"
                                    + txtemail.Text + "' , '"
                                    + txtcontact.Text + "' , "
                                    + txtweight.Text + " , "
                                    + ht + " , '"
                                    + txtuname .Text + "' , '"
                                    + txtpwd.Text + "','NA','" 
                                    + txtMRDate.Text + "')";

        sqlcmd = new SqlCommand(isql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've registered Successfully. Please Login";
        }
        finally
        {
            sqlcon.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }
}