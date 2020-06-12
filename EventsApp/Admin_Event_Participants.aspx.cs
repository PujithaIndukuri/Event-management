﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Admin_Event_Participants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                EventN.Text = Request.Cookies["Name"].Value;
        }

        protected void AdminAnncBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Event_Main.aspx"); 
        }

        protected void TasksBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Event_Tasks.aspx");

        }

        protected void Volunteers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Event_Volunteers.aspx");
        }

        protected void Participants_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Event_Participants.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Page.aspx");
        }

        protected void Feedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Event_Feedback.aspx");
        }
    }
}