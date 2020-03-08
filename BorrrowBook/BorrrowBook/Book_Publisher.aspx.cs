using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BorrrowBook
{
    public partial class Book_Publisher1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
                conn.Open();
                string str = "select name_publisher from Publisher ";
                SqlCommand cmd = new SqlCommand(str, conn);
                SqlDataReader rdr = cmd.ExecuteReader();

                DropDownList1.Items.Clear();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {

                        DropDownList1.Items.Add(rdr["name_publisher"].ToString());
                    }

                }
                else
                    Response.Write("Sorry Try again");
                rdr.Close();

                conn.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(), con2 = new SqlConnection();
            con.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con2.ConnectionString = "Data Source=.;Initial Catalog=borrowDB3;Integrated Security=True";
            con.Open();
            string x = DropDownList1.SelectedValue.ToString();

            string str = " select id from Publisher where name_publisher = '" + x + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                while (rdr.Read())
                {

                    id_publisher.Text = rdr.GetInt32(0).ToString();
                }


            }
            else
                Response.Write("Sorry Try again");

            rdr.Close();

            string str2 = "select id_book from Book_publisher where id_publisher = '" + id_publisher.Text + "'";
            SqlCommand cmd2 = new SqlCommand(str2, con);
            SqlDataReader rdr2 = cmd2.ExecuteReader();

            DropDownList2.Items.Clear();
            if (rdr2.HasRows)
            {
                while (rdr2.Read())
                {

                    con2.Open();
                    int y = rdr2.GetInt32(0);
                    string comStr = "select name_book from Book where id ='" + y + "'";
                    SqlCommand cmd3 = new SqlCommand(comStr, con2);
                    SqlDataReader rdr3 = cmd3.ExecuteReader();
                    rdr3.Read();

                   
                    DropDownList2.Items.Add(rdr3.GetString(0));


                    rdr3.Close();
                    con2.Close();

                }
            }
            else

                Response.Write("Sorry Try again");

            rdr2.Close();

            con.Close();



        }
    }
}