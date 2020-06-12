using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Admin_Event_Tasks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                EventN.Text = Request.Cookies["Name"].Value;
        }

        protected void AddTaskBtn_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
                con1.Open();
                //  String eventName = EventNameTxt.Text;

                String task = TextBox1.Text;
                String notes = TextBox2.Text;
                String eventName = EventN.Text;
                SqlCommand command = new SqlCommand("insert into Tasks values(@Tasks,@Notes,@Event,@Volunteer)", con1);

                command.Parameters.AddWithValue("@Tasks", task);
                command.Parameters.AddWithValue("@Notes", notes);
                command.Parameters.AddWithValue("@Event", eventName);
                command.Parameters.AddWithValue("@Volunteer","Unassigned");
                command.ExecuteNonQuery();
                ;
                con1.Close();
                Response.Write("<script>alert('Task Added');</script>");
                Response.Redirect("Admin_Event_Tasks.aspx");
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

       

        protected void Feedback_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Event_Feedback.aspx");
        }
    }
}