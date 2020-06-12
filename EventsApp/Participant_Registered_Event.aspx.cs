using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Participant_Registered_Event : System.Web.UI.Page
    {
        String login_mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                login_mail = Request.Cookies["Name"].Value;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Participant_Registered_Event.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Participant_Events.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
                con1.Open();
                //  String eventName = EventNameTxt.Text;

                String feedback = TextBox1.Text;
                String user = login_mail.ToString();
             


                //String Sqlquery = "INSERT INTO [EventDetails](Name,EventDate,Location,Agenda) VALUES ('@eventName','@Eventdate','@Location','@Agenda')";
                SqlCommand command = new SqlCommand("insert into Feedback values(@Feedback,@User)", con1);

                command.Parameters.AddWithValue("@Feedback", feedback);
                command.Parameters.AddWithValue("@User", user);
               
                command.ExecuteNonQuery();
                ;
                con1.Close();
                
                Response.Redirect("Participant_Registered_Event.aspx");
            }
            catch (SqlException ex)
            {

            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Page.aspx");
        }

        
    }
}