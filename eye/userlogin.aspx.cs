using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI; 
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

public partial class login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=prasad2462;initial catalog=userreg;integrated Security=true";
        con.Open();
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select* from userreg where email='" + text1.Text + "' and pass ='" + text2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "adminlogin");
        if (ds.Tables[0].Rows.Count > 0)
        {
            label.Text = "Data is found";
        }
        else
        {
            label.Text = "Data is not found";
        }
       
    }

    protected void DDlist1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedValue = DDlist1.SelectedValue;
        Response.Redirect(selectedValue);
    }
}