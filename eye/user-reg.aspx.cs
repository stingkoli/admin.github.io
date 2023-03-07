using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source = prasad2462; Initial Catalog = userreg; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = False; ApplicationIntent = ReadWrite; MultiSubnetFailover = False";
        con.Open();
    }
    protected void Button_Click(object sender, EventArgs e)
    { 
        SqlCommand cmd = new SqlCommand("insert into userreg" + "(fname,lname,date,month,year,gender,email,mobile_no,pass,cpass) values(@fname,@lname,@date,@month,@year,@gender,@email,@mobile_no,@pass,@cpass)", con);
        cmd.Parameters.AddWithValue("@fname", text1.Text);
        cmd.Parameters.AddWithValue("@lname", text2.Text);
        cmd.Parameters.AddWithValue("@date", Drop1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@month", drop2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@year", drop3.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@gender", drop4.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@email", text3.Text);
        cmd.Parameters.AddWithValue("@mobile_no", text4.Text);
        cmd.Parameters.AddWithValue("@pass", text5.Text);
        cmd.Parameters.AddWithValue("@cpass", text6.Text);
        cmd.ExecuteNonQuery();
        con.Close(); 
        label.Text = "Congratulation! You Have Registered sucessfully.";


    }
}