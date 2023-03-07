using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ArticleDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            string connectionString = "Data source=prasad2462;initial catalog=userreg;integrated Security=true";
            string query = "SELECT title, content FROM Articles WHERE id=@id";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            TitleLabel.Text = reader["title"].ToString();
                            ContentLabel.Text = reader["content"].ToString();
                        }
                    }
                }
            }
        }
    }
}