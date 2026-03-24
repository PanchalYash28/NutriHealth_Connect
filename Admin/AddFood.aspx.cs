using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_AddFood : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string isql;
    SqlCommand sqlcmd;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
        txtFoodid.Text = "F" + DateTime.Now.ToString("-yyMMdd-HHmmss");

        if (!Page.IsPostBack)
        {
            FillGoodFor();
        }

    }
    private void FillGoodFor()
    {
     
        sqlcmd = new SqlCommand("Select did, dname from Diseases", sqlcon);
        da = new SqlDataAdapter(sqlcmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        cblGoodFor.DataSource = dt;
        cblGoodFor.DataTextField = "dname";
        cblGoodFor.DataValueField = "did";
        cblGoodFor.DataBind();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        String str = "";

        for (int i = 0; i <= cblGoodFor.Items.Count - 1; i++)
        {
            if (cblGoodFor.Items[i].Selected)
            {
                if (str == "")
                {
                    str = cblGoodFor.Items[i].Text;
                }
                else
                {
                    str += "," + cblGoodFor.Items[i].Text;
                }
            }
        }
       // Response.Write(str);

        String cat = "";

        for (int i = 0; i <= cblCat.Items.Count - 1; i++)
        {
            if (cblCat.Items[i].Selected)
            {
                if (cat == "")
                {
                    cat = cblCat.Items[i].Text;
                }
                else
                {
                   cat += "," + cblCat.Items[i].Text;
                }
            }
        }
       // Response.Write(cat);


        isql = "INSERT INTO Food VALUES ('"
                                        + txtFoodid.Text + "' , '"
                                         + txtFname.Text + "' , '"
                                         + ddlFType.SelectedItem.Text + "' , "
                                         + txtFWeight.Text + " , '"
                                         + ddlFMeasurement.SelectedItem.Text + "' , "
                                         + txtFUnit.Text + " , "
                                         + txtFCal.Text + " , '"
                                         + cat + "' , '"
                                         + str + "')";

        sqlcmd = new SqlCommand(isql, sqlcon);

        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your've added food Successfully.";
        }
        finally
        {
            sqlcon.Close();
        }

    }
}