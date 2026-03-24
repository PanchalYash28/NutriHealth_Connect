using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Member_UploadPhoto : System.Web.UI.Page
{
    SqlConnection sqlcon;
    string usql;
    SqlCommand sqlcmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        sqlcon = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\NutriHealthDB.mdf;Integrated Security=True;User Instance=True");
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        string fpath = "";
        string fname = "";
        string uploadfolder = Request.PhysicalApplicationPath + "MemberPhoto\\";

        if (FileUpload1.HasFile)
        {
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            fname = Session["Mid"].ToString() +"-"+Session["Fname"].ToString()+"-"+Session["Lname"].ToString() + extension;
            FileUpload1.SaveAs(uploadfolder + fname);
        }
        fpath = "~\\MemberPhoto\\" + fname;

        usql = "UPDATE Member SET mphoto = '" + fpath + "' WHERE memberid = '" + Session["Mid"].ToString() + "'";

        sqlcmd = new SqlCommand(usql, sqlcon);
        try
        {
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            lblmsg.Text = "Your Photo Uploaded Successfully.";
            Image1.ImageUrl = fpath;
        }
        catch (Exception excep)
        {
            lblmsg.Text = "Not Succesfull." + excep.Message;
        }
        finally
        {
            sqlcon.Close();
        }
        
    }
}