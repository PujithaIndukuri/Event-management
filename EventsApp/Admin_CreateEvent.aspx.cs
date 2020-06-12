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
    public partial class Admin_CreateEvent : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
       

        protected void EventNameTxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LocationTxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void AgendaTxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void EventSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
                con.Open();
                String eventName = EventNameTxt.Text;
                String Eventdate = EventDateTxt.Text;
                String Location = LocationTxt.Text;
                String Agenda = AgendaTxt.Text;
                DateTime dt;
                dt = DateTime.Parse(Eventdate);

                //String Sqlquery = "INSERT INTO [EventDetails](Name,EventDate,Location,Agenda) VALUES ('@eventName','@Eventdate','@Location','@Agenda')";
                SqlCommand command = new SqlCommand("insert into EventDetails values(@Name,@EventDate,@Location,@Agenda)", con);
                command.Parameters.AddWithValue("@Name", eventName);
                command.Parameters.AddWithValue("@EventDate", dt);
                command.Parameters.AddWithValue("@Location", Location);
                command.Parameters.AddWithValue("@Agenda", Agenda);
                command.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Event has been created');</script>");
                Response.Redirect("Admin_Home.aspx");
            }
            catch(SqlException ex)
            {
                if (ex.Number == 2627)
                {
                    Response.Write("<script>alert('Event Name Already exists. Please use a different Name');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please fill all the fields');</script>");
                }

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Events.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Page.aspx");
        }
    }
}