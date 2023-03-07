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
public partial class admin_admin_blog : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source = prasad2462; Initial Catalog = userreg; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False";
        con.Open();
    }
    protected void btn_Click(object sender, EventArgs e)

    {

        SqlCommand cmd = new SqlCommand( "insert into articles" + "(title, author, date, content) values (@title, @author, @date, @content)");

        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@title", text1.Text);
        cmd.Parameters.AddWithValue("@author", text2.Text);
        cmd.Parameters.AddWithValue("@content", TextBox1.Text);
        cmd.Parameters.AddWithValue("@date", text3.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        label1.Text = "Congratulation! You Have Registered sucessfully.";

    }

}