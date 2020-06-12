using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EventsApp
{
    public partial class Home_Page : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cName1 = new HttpCookie("Name");
            cName1.Value = TextBox1.Text;
            Response.Cookies.Add(cName1);

          

            String Role = YourValidationFunction(TextBox1.Text, TextBox2.Text);
            if (Role.Equals("Admin"))
            {
                Response.Cookies.Add(cName1);
                Response.Redirect("Admin_Home.aspx", false);

            }
            if (Role.Equals("Volunteer"))
            {
                Response.Cookies.Add(cName1);
                Response.Redirect("Admin_Home.aspx", false);
                //System.Windows.Forms.MessageBox.Show("Hi Volunteer ");
            }
            if (Role.Equals("Participant"))
            {
                Response.Cookies.Add(cName1);
                Response.Redirect("Participant_Events.aspx");
                //System.Windows.Forms.MessageBox.Show("Hi Participant ");
            }
        }
        private String YourValidationFunction(string UserName, string Password)
        {
            String U_Role = "";
            //bool boolReturnValue = false;            
            
            string SQLQuery = "SELECT EmailAddress, Password, Role FROM User_Details where EmailAddress=@UserName ";
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Sri\source\repos\EventsApp\EventsApp\App_Data\EventsAppDB.mdf;Integrated Security=True");
            SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
            command.Parameters.AddWithValue("@UserName", UserName);

            SqlDataReader Dr;
            sqlConnection.Open();
            Dr = command.ExecuteReader();
            while (Dr.Read())
            {
                if ((UserName == Dr["EmailAddress"].ToString()) & (Password == Dr["Password"].ToString()))
                {
                    U_Role = Dr["Role"].ToString();
                }
                Dr.Close();
                return U_Role;
            }
            return U_Role;
        }

    }
}