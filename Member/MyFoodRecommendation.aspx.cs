using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_MyFoodRecommendation : System.Web.UI.Page
{
     SqlConnection sqlcon;
    string usql, ssql, str, frid, tdate;
    SqlCommand sqlcmd;
    SqlDataReader sqlrdr;
    double h, w, wtpound, BMR, cstatus, total;
    int age, calorieneeded;


    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        frid = "Fr-" + DateTime.Now.ToString("yyyy-MM-dd-HHmmss");
        tdate = DateTime.Now.ToString("dd-MMM-yyyy");
        if (!IsPostBack)
        {
            ssql = "select height, weight, age, gender, memberid, firstname, lastname FROM Member WHERE memberid = '" + Session["MID"].ToString() + "'";

            sqlcmd = new SqlCommand(ssql, sqlcon);

            try
            {
                sqlcon.Open();
                sqlrdr = sqlcmd.ExecuteReader();
                sqlrdr.Read();

                txtheight.Text = sqlrdr.GetInt32(0).ToString();
                txtweightkg.Text = sqlrdr.GetDecimal(1).ToString();
                txtage.Text = sqlrdr.GetInt32(2).ToString();
                txtgender.Text = sqlrdr.GetString(3);
                txtmid.Text = sqlrdr.GetString(4);
                txtmname.Text = sqlrdr.GetString(5) + " " + sqlrdr.GetString(6);

                sqlrdr.Close();
            }
            finally
            {
                sqlcon.Close();
            }
        }
        if (txtheight.Text != "" && txtweightkg.Text != "" && txtage.Text != "" & txtgender.Text.Equals("Male"))
        {

            h = Convert.ToDouble(txtheight.Text);
            w = Convert.ToDouble(txtweightkg.Text);
            age = Convert.ToInt32(txtage.Text);
            wtpound = w * 2.2046;

            BMR = 66 + (6.23 * wtpound) + (4.7 * h) - (4.7 * age);

            lblmsg.Text = BMR.ToString();

            if (age >= 19 && age <= 30)
            {
                calorieneeded = 2700;
            }
            else if (age > 30 && age <= 59)
            {
                calorieneeded = 2500;
            }
            else if (age >= 60)
            {
                calorieneeded = 2300;
            }

        }
        if (txtheight.Text != "" && txtweightkg.Text != "" && txtage.Text != "" & txtgender.Text.Equals("Female"))
        {
            h = Convert.ToDouble(txtheight.Text);
            w = Convert.ToDouble(txtweightkg.Text);
            age = Convert.ToInt32(txtage.Text);
            wtpound = w * 2.2046;

            BMR = Math.Round((655 + (4.35 * wtpound) + (4.7 * h) - (4.7 * age)), 2);

            lblmsg.Text = BMR.ToString();

            if (age >= 19 && age <= 30)
            {
                calorieneeded = 2200;
            }
            else if (age > 30 && age <= 59)
            {
                calorieneeded = 2000;
            }
            else if (age >= 60)
            {
                calorieneeded = 1800;
            }
            lblactulacal.Text = calorieneeded.ToString();
            cstatus = Math.Round((calorieneeded - BMR), 2);
            lblcstatus.Text = cstatus.ToString();
            
        }
    }
}