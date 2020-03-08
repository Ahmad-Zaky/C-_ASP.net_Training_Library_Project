using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BorrrowBook
{
    public partial class BorrDelivering : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
        }

        public int srch()
        {
            int c = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.ConnectionString = con.ConnectionString;
            con.Open();
            string commandStr = "select name from Borrower where id  = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            SqlDataReader rdr1 = cmd.ExecuteReader();
            if (rdr1.HasRows)
            {
                c = 1;
                while (rdr1.Read())
                {

                    TextBox2.Text = rdr1.GetString(0);
                    Label1.Text = "";
                }
                return c;



            }
            else
            {

                TextBox1.Text = "";
                Label1.Text = "Not Exist ";
                return c;
            }
            //rdr1.Close();

            con.Close();
        
        }



        public void selct()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";

            con.Open();

            string commandStr2 = "select id_book from Bw_Bk where id_borrower = " + TextBox1.Text + "";
            SqlCommand cmd2 = new SqlCommand(commandStr2, con);
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            ListBox1.Items.Clear();
            if (rdr2.HasRows)
            {
                while (rdr2.Read())
                {
                    int x = rdr2.GetInt32(0);
                    K_B(x);
                }


            }
            else
            {
                TextBox1.Text = "";
                Label1.Text = "Not Exist ";
            }

            rdr2.Close();
            con.Close();

        }
        public void K_B(int x)
        {
            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";

            con2.Open();

            string comStr = "select name_book from Book where id =  " + x + "";
            SqlCommand cmd3 = new SqlCommand(comStr, con2);
            SqlDataReader rdr3 = cmd3.ExecuteReader();
            if (rdr3.HasRows)
            {
                while (rdr3.Read())
                {
                    DropDownList1.Items.Add(rdr3.GetString(0));
                }
            }
            else
            {

                TextBox1.Text = "";
                Label1.Text = "Not Exist ";

            }

            rdr3.Close();
            con2.Close();

        }


        public void LogFile()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "select name from Borrower where id  = " + TextBox1.Text + "";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            srch();
            if (srch() == 1)
                selct();

            LogFile();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(DropDownList1.SelectedItem);
        }


        public void LogFile1(string x2,int x1)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "update Bw_Bk set to_  = " + x2 + "where id= " + x1 + "select id from Bw_Bk where id_borrower = " + TextBox1.Text + "";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(), con2 = new SqlConnection();
            con1.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";

            con1.Open();

            string str1 = "select id from Bw_Bk where id_borrower = '"+TextBox1.Text+"'";
            SqlCommand cmd1 = new SqlCommand(str1,con1);
            SqlDataReader rdr = cmd1.ExecuteReader();

            if (rdr.HasRows)
            {
                while (rdr.Read())
                {

                    int x1 = rdr.GetInt32(0);

                    con2.Open();

                    DateTime date1 = new DateTime();
                    date1 = DateTime.Now;
                    string x2 = date1.ToString();

                    string str2 = "update Bw_Bk set to_  = '" + x2 + "'where id= '" + x1 + "'";
                    SqlCommand cmd2 = new SqlCommand(str2, con2);
                    cmd2.ExecuteNonQuery();

                    con2.Close();
                    LogFile1(x2, x1);
                }

            }
            else
            {
                Response.Write("sorry try again !!!");
            
            }

            con1.Close();

           


            
        }
    }
}