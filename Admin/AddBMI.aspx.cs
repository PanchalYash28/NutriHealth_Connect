using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddBMI : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string isql, ssql;
    SqlCommand sqlcmd;
    SqlDataReader sqlrdr;
    double index;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        txttdate.Text = DateTime.Now.ToString("dd-MMM-yyyy");
        txtmid.Text = Request.QueryString["MID"].ToString();
        if (!IsPostBack)
        {
            ssql = "select height, weight FROM Member WHERE memberid = '" + Request.QueryString["MID"].ToString() + "'";

            sqlcmd = new SqlCommand(ssql, sqlcon);

            try
            {
                sqlcon.Open();
                sqlrdr = sqlcmd.ExecuteReader();
                sqlrdr.Read();

                txtheight.Text = sqlrdr.GetInt32(0).ToString();
                txtweightkg.Text = sqlrdr.GetDecimal(1).ToString();

                sqlrdr.Close();
            }
            finally
            {
                sqlcon.Close();
            }
        }

        calc_bmi();
       /* if (txtheight.Text != "" && txtweightkg.Text != "")
        {
            double h = Convert.ToDouble(txtheight.Text);
            double htom = h / 39.37;

            double w = Convert.ToDouble(txtweightkg.Text);


            index = Math.Round(w / (htom * htom), 2);
        }
        if (index < 18.5)
        {
            lblmsg.Text = "You're Under Weight - Your BMI : " + index;
            txthstatus.Text = "Under Weight";

        }
        else if ((index >= 18.5) && (index < 25))
        {
            lblmsg.Text = "You're Noormal Weight - Your BMI : " + index;
            txthstatus.Text = "Normal Weight";

        }
        else if ((index >= 25) && (index < 30))
        {
            lblmsg.Text = "You're Over Weight - Your BMI : " + index;
            txthstatus.Text = "Over Weight";
        }
        else if (index >= 30)
        {
            lblmsg.Text = "You're Obese - Your BMI : " + index;
            txthstatus.Text = "Obese";
        }*/
    }
    protected void calc_bmi()
    {
        if (txtheight.Text != "" && txtweightkg.Text != "")
        {
            double h = Convert.ToDouble(txtheight.Text);
            double htom = h / 39.37;

            double w = Convert.ToDouble(txtweightkg.Text);


            index = Math.Round(w / (htom * htom), 2);
        }
        if (index < 18.5)
        {
            lblmsg.Text = "You're Under Weight - Your BMI : " + index;
            txthstatus.Text = "Under Weight";

        }
        else if ((index >= 18.5) && (index < 25))
        {
            lblmsg.Text = "You're Normal Weight - Your BMI : " + index;
            txthstatus.Text = "Normal Weight";

        }
        else if ((index >= 25) && (index < 30))
        {
            lblmsg.Text = "You're Over Weight - Your BMI : " + index;
            txthstatus.Text = "Over Weight";
        }
        else if (index >= 30)
        {
            lblmsg.Text = "You're Obese - Your BMI : " + index;
            txthstatus.Text = "Obese";
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        
        isql = "INSERT INTO PBMI VALUES ('"
                                        + txtmid.Text + "' , "
                                        + txtweightkg.Text + " , "
                                        + txtheight.Text + " , "
                                        + index + " , '"
                                        + txthstatus.Text + "' , '"
                                        + txttdate.Text + "')";
        sqlcmd = new SqlCommand(isql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've added health status Successfully.";
        }
        finally
        {
            sqlcon.Close();
        }
    }
    protected void txtweightkg_TextChanged(object sender, EventArgs e)
    {
        calc_bmi();
    }
}