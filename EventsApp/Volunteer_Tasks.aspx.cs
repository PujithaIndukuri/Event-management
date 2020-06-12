using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Volunteer_Tasks : System.Web.UI.Page
    {
        String login_mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                login_mail = Request.Cookies["Name"].Value;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Volunteer_Home.aspx");
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Volunteer_Announcements.aspx");
           
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Volunteer_Tasks.aspx");
          
        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Volunteer_Feedback.aspx");
          
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Page.aspx");
        }
    }
}