using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BorrrowBook
{
    public partial class InsertClass : System.Web.UI.Page
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



            string x = "Insert Classification into Class table where calss: " + TextBox1.Text + ""; ;

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
                string str = "Insert into Type(name_type) Values('"+TextBox1.Text+"')";
                SqlCommand cmd = new SqlCommand(str, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                DropDownList1.Items.Add(TextBox1.Text);
                LogFile();
        }


        
    }
}