using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Admin_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userName;
            if (Request.Cookies["Name"] != null)
              userName   = Request.Cookies["Name"].Value;

          /*  if (!IsPostback)
            {
                Literal myText = new Literal()
                {
                    Text = userName;
                };
                Content2.Controls.Add(myText);*/
            }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_CreateEvent.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Events.aspx");
        }
            
    }
}