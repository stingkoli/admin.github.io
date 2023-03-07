using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random ran = new Random();
        int i = ran.Next(1, 4);
        Image2.ImageUrl = "~/images/" + i.ToString() + ".jpg";
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
