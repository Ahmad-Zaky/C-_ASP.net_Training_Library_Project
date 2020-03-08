using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BorrrowBook
{
    public partial class borrowing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
        }

        public void LogFile()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "select name_book from Book where id  = " + TextBox1.Text + "";
            

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }
        public void LogFile1()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "select name from Borrower where id  = " + TextBox3.Text + "";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }
        public void LogFile2(string date)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "Insert into Bw_Bk(id_borrower,id_book,from_) Values(" + TextBox3.Text + "," + TextBox1.Text + "," + date + ")";
            
            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string time = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + time + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.ConnectionString = con.ConnectionString;
            con.Open();
            string commandStr = "select name_book from Book where id  = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            SqlDataReader rdr1 = cmd.ExecuteReader();
            if (rdr1.HasRows)
            {
              
                while (rdr1.Read())
                {

                    TextBox2.Text = rdr1.GetString(0);
                    Label1.Text = TextBox1.Text;
                }
               
            }
            else
            {
                TextBox2.Text = "";
                Label1.Text = "Not Exist ";
             }
            
            con.Close();
            LogFile();

        }

       
        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.ConnectionString = con.ConnectionString;
            con.Open();
            string commandStr = "select name from Borrower where id  = '" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            SqlDataReader rdr1 = cmd.ExecuteReader();
            if (rdr1.HasRows)
            {

                while (rdr1.Read())
                {

                    TextBox4.Text = rdr1.GetString(0);
                    Label2.Text = TextBox3.Text;
                }

            }
            else
            {
                TextBox4.Text = "";
                Label2.Text = "Not Exist ";
            }

            con.Close();
            LogFile1();
        
        }
        
        
        
        protected void Button2_Click(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
           // con.ConnectionString = con.ConnectionString;
            
            con.Open();
           
            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string x = date1.ToString();


            string str = "Insert into Bw_Bk(id_borrower,id_book,from_) Values('" + TextBox3.Text + "','" + TextBox1.Text + "','" + x + "')";
            SqlCommand cmd = new SqlCommand(str,con);
            
            cmd.ExecuteNonQuery();
            
            con.Close();
            LogFile2(x);
        }

    }
}