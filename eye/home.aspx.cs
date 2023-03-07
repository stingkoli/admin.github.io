using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
          
            string connectionString = "Data source=prasad2462;initial catalog=userreg;integrated Security=true";
            string query = "SELECT id, title, summary, content FROM Articles";

            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                
                connection.Open();

               
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        
                        ArticlesRepeater.DataSource = reader;
                        ArticlesRepeater.DataBind();
                    }
                }
            }
        }
    }



        protected void ArticlesRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ReadMore")
            {
            var index = Convert.ToInt32(e.CommandArgument);
                HtmlGenericControl contentDiv = (HtmlGenericControl)ArticlesRepeater.Items[index].FindControl("contentDiv");
                if (contentDiv != null)
                {
                    contentDiv.Style["display"] = "block";
                    Button readMoreButton = (Button)ArticlesRepeater.Items[index].FindControl("ReadMoreButton");
                    readMoreButton.Visible = false;
                    Button readLessButton = (Button)ArticlesRepeater.Items[index].FindControl("ReadLessButton");
                    readLessButton.Visible = true;
                }
            }
            else if (e.CommandName == "ReadLess")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                HtmlGenericControl contentDiv = (HtmlGenericControl)ArticlesRepeater.Items[index].FindControl("contentDiv");
                if (contentDiv != null) 
                {
                    contentDiv.Style["display"] = "none";
                    Button readLessButton = (Button)ArticlesRepeater.Items[index].FindControl("ReadLessButton");
                    readLessButton.Visible = false;
                    Button readMoreButton = (Button)ArticlesRepeater.Items[index].FindControl("ReadMoreButton");
                    readMoreButton.Visible = true;
                }
            }
            else if (e.CommandName == "ViewDetails")
            {
                int id = Convert.ToInt32(e.CommandArgument);

            Response.Redirect("~/ArticleDetails.aspx" +"id=" );
            }
        }
    
}
    

        
