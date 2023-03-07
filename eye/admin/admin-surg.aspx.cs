using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class admin_admin_surg : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into Eyetreat" + "(tname, tcost, tdescription, imgName, imgPath) values (@tname, @tcost, @tdescription, @imgName, @imgPath)";
        con.Open();
        cmd.Parameters.AddWithValue("@tname", text1.Text);
        cmd.Parameters.AddWithValue("@tcost", text2.Text);
        cmd.Parameters.AddWithValue("@tdescription", TextBox1.Text);
        cmd.Parameters.AddWithValue("@imgName", "");
        cmd.Parameters.AddWithValue("@imgPath", "");
        Label1.Text = "";
        TextBox1.Text = "";
        if (FileUpload1.HasFiles)
        {
            foreach (HttpPostedFile fu in FileUpload1.PostedFiles)
            {
                string path = "/surgeriesimg/" + fu.FileName;
                cmd.Parameters["@imgName"].Value = fu.FileName;
                cmd.Parameters["@imgPath"].Value = path;
                if (cmd.ExecuteNonQuery() > 0)
                {
                    fu.SaveAs(Path.Combine(Server.MapPath("/surgeriesimg/"), fu.FileName));
                    Label1.Text += string.Format("{0}<br>", fu.FileName + "Images uploaded and save" +
                        "data inserted");
                }
            }
        }
        else
        {
            Label1.Text = "Select image first";
        }
        cmd.Parameters.Clear();
        con.Close();
    }
    protected void Text5_TextChanged(object sender, EventArgs e)
    {

    }
}

