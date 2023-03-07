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

public partial class admin_admin_disorder : System.Web.UI.Page
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
        cmd.CommandText = "insert into Eyedisorder" + "(dname,ddescription,imgName,imgPath) values(@dname,@ddescription,@imgName,@imgPath)";
        con.Open();
        Label1.Text = "";
        cmd.Parameters.AddWithValue("@dname", text1.Text);
        cmd.Parameters.AddWithValue("@ddescription",TextBox1.Text);
        if (FileUpload1.HasFiles)
        {
            foreach (HttpPostedFile fu in FileUpload1.PostedFiles)
            {
                string path = "/disorderimg/" + fu.FileName;
                cmd.Parameters.AddWithValue("@imgName", fu.FileName);
                cmd.Parameters.AddWithValue("@imgPath", path);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    fu.SaveAs(Path.Combine(Server.MapPath("/disorderimg/"), fu.FileName));
                    Label1.Text += string.Format("{0}<br>", fu.FileName + "Images uploaded and save" +
                        "data inaerted");
                    cmd.Parameters.Clear();
                }
                con.Close(); 
            }
        }

        else
        {
            Label1.Text = "Select image first";

        }

    }
}
