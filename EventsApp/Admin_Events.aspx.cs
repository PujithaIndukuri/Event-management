using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Admin_Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Events.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_CreateEvent.aspx");
        }

       

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie cName = new HttpCookie("Name");
            cName.Value = GridView1.SelectedValue.ToString();
            Response.Cookies.Add(cName);

            Response.Redirect("Admin_Event_Main.aspx");
        }
    }
}