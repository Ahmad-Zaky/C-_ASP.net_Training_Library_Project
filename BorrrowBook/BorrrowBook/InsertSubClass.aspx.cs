using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace BorrrowBook
{
    public partial class InsertSubType : System.Web.UI.Page
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(), con2 = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";


            con.Open();

            string x = DropDownList1.SelectedValue.ToString();

            string str = " select id from Type where name_type = '" + x + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rdr = cmd.ExecuteReader();



            if (rdr.HasRows)
            {
                while (rdr.Read())
                {

                    Label1.Text = rdr.GetInt32(0).ToString();
                }


            }
            else
                Response.Write("Sorry Try again");

            rdr.Close();

            string str2 = "select id_subtype from Book where id_type = '" + Label1.Text + "'";
            SqlCommand cmd2 = new SqlCommand(str2, con);
            SqlDataReader rdr2 = cmd2.ExecuteReader();

            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("اختار تصنيف فـرعى للكتاب");
                
            if (rdr2.HasRows)
            {
                while (rdr2.Read())
                {
                    int y = rdr2.GetInt32(0);
                    con2.Open();
                    string str3 = "select name_subtype from Subtype where id = '" + y + "'";
                    SqlCommand cmd3 = new SqlCommand(str3, con2);
                    SqlDataReader rdr3 = cmd3.ExecuteReader();

                    if (rdr3.HasRows)
                    {
                        while (rdr3.Read())
                        {
                            DropDownList2.Items.Add(rdr3.GetString(0));

                        }
                    }
                    else
                    {
                        Response.Write("Sorry Try again");
                    }
                }
            }
            else

                Response.Write("Sorry Try again");

            rdr2.Close();

            con.Close();

        }

        public void LogFile()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();



            string x = "Insert SubClassification into SubCalss table where SubClass: " + TextBox1.Text + ""; ;

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

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            conn.Open();

            string str = "Insert into SubType(name_subtype) Values('" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();

            conn.Close();
            DropDownList2.Items.Add(TextBox1.Text);

            LogFile();
        }
    }
}