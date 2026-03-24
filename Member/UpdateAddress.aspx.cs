using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_UpdateAddress : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string usql, ssql;
    SqlCommand sqlcmd;
    SqlDataReader sqlrdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        if (!IsPostBack)
        {
            ssql = "select memberid, firstname, lastname, address, city, state, pincode, emailid, contactno FROM Member WHERE memberid = '" + Session["Mid"].ToString() + "'";

            sqlcmd = new SqlCommand(ssql, sqlcon);

            try
            {
                sqlcon.Open();
                sqlrdr = sqlcmd.ExecuteReader();
                sqlrdr.Read();

                txtMemberid.Text = sqlrdr.GetString(0);
                txtfname.Text = sqlrdr.GetString(1);
                txtlname.Text = sqlrdr.GetString(2);
                txtaddress.Text = sqlrdr.GetString(3);
                txtcity.Text = sqlrdr.GetString(4);
                txtstate.Text = sqlrdr.GetString(5);
                txtpin.Text = sqlrdr.GetString(6);
                txtemail.Text = sqlrdr.GetString(7);
                txtcontact.Text = sqlrdr.GetString(8);

                sqlrdr.Close();
            }
            finally
            {
                sqlcon.Close();
            }
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        usql = "UPDATE Member SET address = '" + txtaddress.Text
                        + "', city = '" + txtcity.Text
                        + "', state = '" + txtstate.Text
                        + "', pincode = '" + txtpin.Text
                        + "' , contactno = '" + txtcontact.Text
                        + "' , emailid = '" + txtemail.Text
                        + "' where memberid = '" + Session["Mid"].ToString() + "'";

        sqlcmd = new SqlCommand(usql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've Update Address Successfully.";
        }
        finally
        {
            sqlcon.Close();
        }
    }
}