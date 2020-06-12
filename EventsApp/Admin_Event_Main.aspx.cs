using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EventsApp
{
    public partial class Admin_Event_Main : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                EventN.Text = Request.Cookies["Name"].Value;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
                con1.Open();
                //  String eventName = EventNameTxt.Text;
                
                String post = AnncTxtBox.Text;
                String eventName = EventN.Text;
                String role = RoleList.SelectedValue;
                

                //String Sqlquery = "INSERT INTO [EventDetails](Name,EventDate,Location,Agenda) VALUES ('@eventName','@Eventdate','@Location','@Agenda')";
                SqlCommand command = new SqlCommand("insert into Announcements values(@Post,@Event,@Role)", con1);
 
                command.Parameters.AddWithValue("@Post", post);
                command.Parameters.AddWithValue("@Event", eventName);
                command.Parameters.AddWithValue("@Role", role);
                command.ExecuteNonQuery();
                ;
                con1.Close();
                Response.Write("<script>alert('Announcement has been posted');</script>");
                Response.Redirect("Admin_Event_Main.aspx");
            }
            catch (SqlException ex)
            {
                
            }
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