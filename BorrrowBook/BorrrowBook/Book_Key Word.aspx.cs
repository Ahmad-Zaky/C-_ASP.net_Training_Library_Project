using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace BorrrowBook
{
    public partial class Book_Key_Word : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            number_of_book.Focus();
        }

        public void K_B(int x)
        {
            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";

            con2.Open();

            string comStr = "select key_word from Key_Word where id =  " + x + "";
            SqlCommand cmd3 = new SqlCommand(comStr, con2);
            SqlDataReader rdr3 = cmd3.ExecuteReader();
            if (rdr3.HasRows)
            {
                while (rdr3.Read())
                {
                    ListBox1.Items.Add(rdr3.GetString(0));
                }
            }
            else {

                id_book.Text = "";
                number_of_book.Text = "";
                name_of_book.Text = "";
                Label1.Text = "Not Exist ";

            }

             rdr3.Close();
            con2.Close();

        }
        public int srch()
        {
            int c = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.ConnectionString = con.ConnectionString;
            con.Open();
            string commandStr = "select name_book from Book where id  = '" + number_of_book.Text + "'";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            SqlDataReader rdr1 = cmd.ExecuteReader();
            if (rdr1.HasRows)
            {
                c = 1;
                while (rdr1.Read())
                {
                    
                    name_of_book.Text = rdr1.GetString(0);
                    Label1.Text = "";
                }
                return c;

                
            }
            else
            {
               
                id_book.Text = "";
                number_of_book.Text = "";
                name_of_book.Text = "";
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

            string commandStr2 = "select id_kw from B_K where id_book = " + number_of_book.Text + "";
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
                id_book.Text = "";
                number_of_book.Text = "";
                name_of_book.Text = "";
                Label1.Text = "Not Exist ";
            }

            rdr2.Close();
            con.Close();

        }

        public void add()
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();

            string str1 = " Insert into Key_Word(key_word,location) Values('" + key_word.Text + "','" + location.Text + "')";
            SqlCommand cmd = new SqlCommand(str1, con);
            cmd.ExecuteNonQuery();
            Label2.Text = "Save Done";

            ListBox1.Items.Add(key_word.Text);

            con.Close();

        }

        public void LogFile()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            contentof.Text = " Insert into Key_Word(key_word,location) Values(" + key_word.Text + "," + location.Text + ")";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            time.Text = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + contentof.Text + "','" + time.Text + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }
        public void LogFile1()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "select name_book from Book where id  = " + number_of_book.Text + "" ;

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }


        protected void search_Click(object sender, EventArgs e)
        {

            srch();
            if(srch()==1)
               selct();
            LogFile1();
        }

        protected void new_Click(object sender, EventArgs e)
        {
            location.Text = "";
            key_word.Text = "";
            Label1.Text = "";
            
        }

        protected void save_Click(object sender, EventArgs e)
        {
            add();
            LogFile();
        }

        protected void select_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();

            string commandStr = "select id,key_word from Key_Word where id  = " + id.Text + "";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    Label3.Text = rdr.GetInt32(0).ToString();
                    key_word.Text = rdr.GetString(1);
                }
            }
            else
            {
                key_word.Text = "";
                location.Text = "";
                Label4.Text = "Not Exist";
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();

            string str = " Insert into B_K(id_book,id_kw) Values('" + number_of_book.Text + "','" + id.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();


            con.Close();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();

            string commandStr = "delete from  Key_Word where id =" + id.Text + "";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            cmd.ExecuteNonQuery();
            key_word.Text = "";
            location.Text = "";

            con.Close();
        }

        
       
    
    }

}