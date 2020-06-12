using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Participant_Events : System.Web.UI.Page
    {

        String login_mail;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Name"] != null)
                login_mail = Request.Cookies["Name"].Value;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Participant_Events.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Participant_Registered_Event.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new System.Data.SqlClient.SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
                con.Open();
                String eventName = GridView1.SelectedValue.ToString();
                

                SqlCommand command = new SqlCommand(" Update User_Details SET Event= @Event where EmailAddress = login_mail", con);
                command.Parameters.AddWithValue("@Event", eventName);

                command.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Registration Successful');</script>");
                Response.Redirect("Participant_Registered_Event.aspx");
            }
            catch (SqlException ex)
            {

                Response.Write("<script>alert('Registration UnSuccessful');</script>");
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Page.aspx");
        }
    }
}