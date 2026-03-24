using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_MyHealthStatus : System.Web.UI.Page
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

        double index = 0;
        if (txtheight.Text != "" && txtweightkg.Text != "")
        {
            double h = Convert.ToDouble(txtheight.Text);
            double htom = h / 39.37;

            double w = Convert.ToDouble(txtweightkg.Text);


            index = Math.Round(w / (htom * htom), 2);
        }
        if (index < 18.5)
        {
            btnshow.Text = "You're Under Weight - Your BMI : " + index;

        }
        else if ((index >=18.5)  && (index < 25))
        {
            btnshow.Text = "You're Normal Weight - Your BMI : " + index;

        }
        else if ((index >= 25) && (index < 30))
        {
            btnshow.Text = "You're Over Weight - Your BMI : " + index;
        }
        else if (index >= 30)
        {
            btnshow.Text = "You're Obese - Your BMI : " + index;
        }
    }
   
}