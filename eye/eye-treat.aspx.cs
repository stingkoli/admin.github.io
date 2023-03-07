using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class eye_treat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string connectionString = "Data source=prasad2462;initial catalog=userreg;integrated Security=true";
            string tableName = "Eyetreat";
            string query = "SELECT tname, tcost, tdescription, imgName FROM " + tableName;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataSet dataSet = new DataSet();
            connection.Open();
            adapter.Fill(dataSet, tableName);
            connection.Close();
            GridView1.DataSource = dataSet.Tables[0];
            GridView1.DataBind();
        }
    }
}
