using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Admin_Event_Volunteers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                EventN.Text = Request.Cookies["Name"].Value;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            String volName = GridView2.SelectedValue.ToString();
            try
            {

                SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
                con1.Open();
                String eventName = EventN.Text;
                SqlCommand command = new SqlCommand("update User_Details set  Event= @Event where EmailAddress =volName )", con1);
                command.Parameters.AddWithValue("@Event", eventName);
                command.ExecuteNonQuery();
                
                con1.Close();
                Response.Write("<script>alert('Volunteer has been added');</script>");
                Response.Redirect("Admin_Event_Volunteers.aspx");
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