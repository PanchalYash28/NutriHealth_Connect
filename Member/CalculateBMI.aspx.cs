using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_CalculateBMI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            USPanel.Visible = false;
            OtherPanel.Visible = false;
        }

    }
    protected void btncalculate_Click(object sender, EventArgs e)
    {
        int ft = Convert.ToInt32(ddlFoot.SelectedValue);
        int inch = Convert.ToInt32(ddlInch.SelectedValue);
        int ht = (ft * 12) + inch;
        double index = 0;
            
        
        if (ddlFoot.SelectedIndex != -1 && ddlInch.SelectedIndex != -1 && txtweight.Text != "")
        {
            double h = ht;
           // double htom = h / 39.37;
           // lblinch.Text = "inch to meter : " + htom.ToString();
            double w = Convert.ToDouble(txtweight.Text);
            double wtop = w / 2.2046;
           // lblpound.Text = "pound to kg : " + wtop.ToString();
            index = Math.Round(w / (h * h) * 703, 2);
            ViewStatus(index);
        }

    }
    protected void ViewStatus(double bmi)
    {
        if (bmi < 18.5)
        {
            lblmsg.Text = "Under Weight - BMI : " + bmi;
        }
        else if (bmi < 25)
        {
            lblmsg.Text = "Normal Weight - BMI : " + bmi;
        }
        else if (bmi < 30)
        {
            lblmsg.Text = "Over Weight - BMI : " + bmi;
        }
        else
        {
            lblmsg.Text = "Obese - BMI : " + bmi;

        }

    }
    protected void ViewStatus1(double bmi)
    {
        if (bmi < 18.5)
        {
           lblmsg0.Text = "Under Weight - BMI : " + bmi;

        }
        else if (bmi < 25)
        {
            lblmsg0.Text = "Normal Weight - BMI : " + bmi;
        }
        else if (bmi < 30)
        {
            lblmsg0.Text = "Over Weight - BMI : " + bmi;

        }
        else
        {
           lblmsg0.Text = "Obese - BMI - 1: " + bmi;

        }
    }
    protected void CalcMetrics(object sender, EventArgs e)
    {
        if (rdus.Checked)
        {
            USPanel.Visible = true;
            OtherPanel.Visible = false;
        }
        if (rdother.Checked)
        {
            USPanel.Visible = false;
            OtherPanel.Visible = true;
        }

    }
    protected void btncalculateother_Click(object sender, EventArgs e)
    {
        double index1 = 0;
        int ft = Convert.ToInt32(ddlFoot0.SelectedValue);
        int inch = Convert.ToInt32(ddlInch0.SelectedValue);
        int ht = (ft * 12) + inch;

        if (ddlFoot0.SelectedIndex != -1 && ddlInch0.SelectedIndex != -1 && txtweightkg.Text != "")
        {
            double h = ht;

           // double h = Convert.ToDouble(txtheightm.Text);
          //  double mtoh = h * 39.37;
           // lblmeter.Text = " meter to inch : " + mtoh.ToString();
            double mt = ht * 0.0254;
            double w = Convert.ToDouble(txtweightkg.Text);
            double wtokg = w * 2.2046;
            //lblpound0.Text = " kg to pound : " + wtokg.ToString();
            index1 = Math.Round(w / (mt * mt), 2);
            ViewStatus1(index1);
        }
    }
}
