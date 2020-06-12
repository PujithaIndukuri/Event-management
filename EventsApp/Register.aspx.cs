using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into User_Details values(@FirstName,@LastName,@EmailAddress,@PhoneNumber,@Role,@Password,@Event,@Task)", con);
                cmd.Parameters.AddWithValue("FirstName", TextBox1.Text);
                cmd.Parameters.AddWithValue("LastName", TextBox2.Text);
                cmd.Parameters.AddWithValue("EmailAddress", TextBox3.Text);
                cmd.Parameters.AddWithValue("PhoneNumber", TextBox4.Text);
                cmd.Parameters.AddWithValue("Role", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("Password", TextBox5.Text);
                cmd.Parameters.AddWithValue("Event", "Unassigned");
                cmd.Parameters.AddWithValue("Task", "Unassigned");
                cmd.ExecuteNonQuery();
                con.Close();
                //MessageBox.Show("Registration is successfull");
                Response.Write("<script>alert('Event has been created');</script>");
                Response.Redirect("Home_Page.aspx", false);

            }

            catch (SqlException ex)
            {

              Response.Write("<script>alert('Please fill all the fields');</script>");

            }
        }

        
    }
}