using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_FoodRecommendation : System.Web.UI.Page
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
            ssql = "select height, weight, age, gender, memberid, firstname, lastname FROM Member WHERE memberid = '" + Request.QueryString["MID"].ToString() + "'";

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
            GridView1.Visible = false;
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

            BMR = Math.Round((655 + (4.35 * wtpound) + (4.7 * h) - (4.7 * age)),2);

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
            if (BMR < calorieneeded)
            {
                GridView1.Visible = true;
            }
        }
        
       /* if (index < 18.5)
        {
            btnshow.Text = "You're Under Weight - Your BMI : " + index;

        }
        else if ((index >= 18.5) && (index < 25))
        {
            btnshow.Text = "You're Noormal Weight - Your BMI : " + index;

        }
        else if ((index >= 25) && (index < 30))
        {
            btnshow.Text = "You're Over Weight - Your BMI : " + index;
        }
        else if (index >= 30)
        {
            btnshow.Text = "You're Obese - Your BMI : " + index;
        }*/
    }
    protected void CheckedChanged(object sender, EventArgs e)
    {
        double total = 0;
        double sum = 0;
        foreach (GridViewRow rowin in GridView1.Rows)
        {
            CheckBox cb = rowin.FindControl("CheckBox1") as CheckBox;
            double price = Convert.ToDouble(rowin.Cells[4].Text);

            if (cb.Checked)
            {

                TextBox strQuantity = rowin.FindControl("txtqty") as TextBox;
                total = (Convert.ToDouble(strQuantity.Text) * Convert.ToDouble(rowin.Cells[4].Text));
                sum = sum + total;
            }
        }
        if (sum >= cstatus) { GridView1.Enabled = false; }

        lblmess.Text = sum.ToString();
    }


    protected void btnfrecommend_Click(object sender, EventArgs e)
    {
        string str="";
        total = 0;
        try
        {
            sqlcon.Open();
            foreach (GridViewRow rowin in GridView1.Rows)
            {
                CheckBox cb = rowin.FindControl("CheckBox1") as CheckBox;
                double price = Convert.ToDouble(rowin.Cells[4].Text);

                if (cb.Checked)
                {

                    TextBox strQuantity = rowin.FindControl("txtqty") as TextBox;
                    str = "INSERT INTO FoodRecommendation VALUES ('" + frid + "','" + txtmid.Text + "','" + rowin.Cells[0].Text + "'," + strQuantity.Text + ",'" + tdate + "')";
                    //Response.Write("insert in ordedetails" + str);
                    sqlcmd = new SqlCommand(str, sqlcon);
                    sqlcmd.ExecuteNonQuery();


                }
            }
            lblstatus.Text = "You've Recommended Food";
            //Response.Redirect("PayNow.aspx");
        }
        catch (Exception ex) { lblmess.Text = "Food Not Recommended" + ex.Message; }
        finally
        {
            sqlcon.Close();
        }
    }
}