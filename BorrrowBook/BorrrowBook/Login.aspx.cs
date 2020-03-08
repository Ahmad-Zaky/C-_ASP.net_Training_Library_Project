using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BorrrowBook
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void LogFile1()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "Login adminstrator ";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LogFile1();
        }
    }
}