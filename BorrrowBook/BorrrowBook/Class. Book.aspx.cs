using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BorrrowBook
{
    public partial class key_word_book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
                conn.Open();
                string str = "select name_type from Type ";
                SqlCommand cmd = new SqlCommand(str, conn);
                SqlDataReader rdr = cmd.ExecuteReader();

                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("اختار تصنيف اساسى للكتاب");
                DropDownList2.Items.Add("اختار تصنيف فـرعى للكتاب");
                DropDownList3.Items.Add("اختار اســــــــم الكتاب");
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {

                        DropDownList1.Items.Add(rdr["name_type"].ToString());
                    }

                }
                else
                    Response.Write("Sorry Try again");
                rdr.Close();

                conn.Close();
            }


            TextBox1.Focus();
        }

        public void LogFile()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "search class & subclass & name_book ";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x +"','"+ y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
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
            else
            {

                TextBox1.Text = "";
                Label1.Text = "Not Exist ";

            }

            rdr3.Close();
            con2.Close();

        }

        public void selct()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";

            con.Open();

            string commandStr2 = "select id_kw from B_K where id_book = " + TextBox1.Text + "";
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

        public int srch()
        {
            int c = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.ConnectionString = con.ConnectionString;
            con.Open();
            string commandStr = "select name_book from Book where id  = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(commandStr, con);
            SqlDataReader rdr1 = cmd.ExecuteReader();
            DropDownList3.Items.Clear();
            if (rdr1.HasRows)
            {
                c = 1;
                while (rdr1.Read())
                {

                    DropDownList3.Items.Add(rdr1.GetString(0).ToString());
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


        protected void Button3_Click(object sender, EventArgs e)
        {



            SqlConnection con1 = new SqlConnection(), con2 = new SqlConnection(), con3 = new SqlConnection(), con4 = new SqlConnection(), con5 = new SqlConnection(), con6 = new SqlConnection();
            con1.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con3.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con4.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con5.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con6.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";


            con1.Open();

            string str1 = " select id_type from Book where id = '" + TextBox1.Text + "'";
            SqlCommand cmd1 = new SqlCommand(str1, con1);
            SqlDataReader rdr1 = cmd1.ExecuteReader();
            if (rdr1.HasRows)
            {
                while (rdr1.Read())
                {
                    int x1 = rdr1.GetInt32(0);

                    con2.Open();

                    string str2 = "select name_type from Type where id = '" + x1 + "'";
                    SqlCommand cmd2 = new SqlCommand(str2, con2);
                    SqlDataReader rdr2 = cmd2.ExecuteReader();
                    DropDownList1.Items.Clear();
                    DropDownList1.Items.Add("اختار تصنيف اساسى للكتاب");

                    if (rdr2.HasRows)
                    {
                        while (rdr2.Read())
                        {

                            DropDownList1.Items.Add(rdr2.GetString(0).ToString());

                            con3.Open();
                            
                            string str3 = "select id_subtype from Book where id_type = " + x1 + "";
                            SqlCommand cmd3 = new SqlCommand(str3, con3);
                            SqlDataReader rdr3 = cmd3.ExecuteReader();
                            DropDownList2.Items.Clear();
                            DropDownList2.Items.Add("اختار تصنيف فـرعى للكتاب");
                            if (rdr3.HasRows)
                            {
                                while (rdr3.Read())
                                {
                                    int x2 = rdr3.GetInt32(0);
                                  
                                    con4.Open();

                                    
                                    string str4 = "select name_subtype  from SubType where id = '" + x2 + "'";

                                    SqlCommand cmd4 = new SqlCommand(str4, con4);
                                    SqlDataReader rdr4 = cmd4.ExecuteReader();


                                    DropDownList3.Items.Clear();
                                    DropDownList3.Items.Add("اختار اســــــــم الكتاب");


                                    if (rdr4.HasRows)
                                    {
                                        while (rdr4.Read())
                                        {
                                            string x4 = rdr4.GetString(0).ToString();
                                            
                                            DropDownList2.Items.Add(rdr4.GetString(0).ToString());


                                            con5.Open();

                                            string str5 = "select name_book from Book where id_subtype = '" + x2 + "'";
                                            SqlCommand cmd5 = new SqlCommand(str5, con5);
                                            SqlDataReader rdr5 = cmd5.ExecuteReader();
                                            
                                            DropDownList3.Items.Clear();
                                            DropDownList3.Items.Add("اختار اســــــــم الكتاب");

                                            if (rdr5.HasRows)
                                            {
                                                while (rdr5.Read())
                                                {
                                                    DropDownList3.Items.Add(rdr5.GetString(0).ToString());
                                                }
                                            }
                                            else
                                            {

                                                TextBox1.Text = "";
                                                Label1.Text = "Not Exist";


                                            }


                                            con5.Close();
                                        }
                                    }
                                    else
                                    {
                                        TextBox1.Text = "";
                                        Label1.Text = "Not Exist";

                                    }

                                    con4.Close();


                                }
                            }
                            else
                            {
                                TextBox1.Text = "";
                                Label1.Text = "Not Exist";
                            }

                            con3.Close();
                        }
                    }
                    else
                    {

                        TextBox1.Text = "";
                        Label1.Text = "Not Exist";

                    }

                    con2.Close();

                }

            }
            else
            {
                TextBox1.Text = "";
                Label1.Text = "Not Exist";

            }

            con1.Close();


            srch();
            if (srch() == 1)
                selct();
            LogFile();

        }

        public void LogFile2()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "Insert key word in list box where key word = " + TextBox2.Text + "";

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Add(TextBox2.Text);
            LogFile2();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Add(ListBox1.Text);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Remove(ListBox2.SelectedItem);
        }

        public void LogFile1()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "Insert key words into Key Word table where key word: "+ListBox2.SelectedValue+""; ;

            DateTime date1 = new DateTime();
            date1 = DateTime.Now;
            string y = date1.ToString();

            string str2 = " Insert into LogFile(content_of,time) Values('" + x + "','" + y + "')";

            SqlCommand cmd1 = new SqlCommand(str2, con);

            cmd1.ExecuteNonQuery();


            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";

            con.Open();

            string str = "Insert into Key_Word(key_word) Values('" + ListBox2.SelectedItem + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            con.Close();

            Label2.Text = "Save Done";
            LogFile1();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("اختار تصنيف فـرعى للكتاب");


            SqlConnection con = new SqlConnection(), con2 = new SqlConnection(), con3 = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con3.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            
            
            con.Open();


            string str = " select id from Type where name_type = '" + DropDownList1.SelectedItem + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                while (rdr.Read())
                {

                    // int x2 = rdr.GetInt32(0);
                    con2.Open();

                    string str2 = "select id_subtype from Book where id_type = '" + rdr.GetInt32(0) + "'";
                    SqlCommand cmd2 = new SqlCommand(str2, con2);
                    SqlDataReader rdr2 = cmd2.ExecuteReader();


                    if (rdr2.HasRows)
                    {
                        while (rdr2.Read())
                        {

                            con3.Open();
                            string str3 = "select name_subtype from SubType where id = '"+rdr2.GetInt32(0)+"'";
                            SqlCommand cmd3 = new SqlCommand(str3,con3);
                            SqlDataReader rdr3 = cmd3.ExecuteReader();
                            if (rdr3.HasRows)
                            {
                                while(rdr3.Read())
                                {
                                DropDownList2.Items.Add(rdr3.GetString(0).ToString());
                                }
                            }
                            else
                            { 
                            Response.Write("Sorry Try again");
                            }
                            rdr3.Close();
                            con3.Close();

                        }
                    }
                    else
                        

                    rdr2.Close();
                    con2.Close();


                }


            }
            else
                Response.Write("Sorry Try again");
            rdr.Close();

            con.Close();





        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("اختار تصنيف فرعى للكتاب");

            SqlConnection con = new SqlConnection(), con2 = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            
            con.Open();

            string x = DropDownList2.SelectedValue.ToString();

            string str = " select id from SubType where name_subtype = '" + x + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    int y = rdr.GetInt32(0);
                    con2.Open();
                    string str2 = "select name_book from Book where id_subtype = '" + y + "'";
                    SqlCommand cmd2 = new SqlCommand(str2, con2);
                    SqlDataReader rdr2 = cmd2.ExecuteReader();


                    if (rdr2.HasRows)
                    {
                        while (rdr2.Read())
                        {
                            DropDownList3.Items.Add(rdr2.GetString(0));
                           

                        }
                    }
                    else

                        Response.Write("Sorry Try again");



                    rdr2.Close();

                    con2.Close();
                }

            }
            else
                Response.Write("Sorry Try again");

            rdr.Close();



            con.Close();


        }


    }
}