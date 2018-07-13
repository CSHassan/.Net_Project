using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WebApplication1
{
    public partial class FirstWebPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //loads the Coloums name from the database and column tblCUstomer to the Drop down box
            //changed database location - july 12 2018
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Hassan_Test_DB_ConnectionString"].ConnectionString);
            String sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.Columns WHERE TABLE_NAME = 'tblCustomer'";
            SqlDataAdapter dataAdapter = new SqlDataAdapter(sql, conn);
            DataTable table = new DataTable();
            dataAdapter.Fill(table);


            foreach (DataRow row in table.Rows)
            {
                DropDownList1.Items.Add(row[0].ToString());
            }
        }

        
        public string FirstName;
        public string LastName;

        //Loads up  to the customer_information page based on the customer drop down list.
        public void Button1_Click(object sender, EventArgs e)
        {
            string commandstring = "SELECT * FROM [tblCustomer]  WHERE FullName ='" + Customer_Box.Text + "'";

            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Hassan_Test_DB_ConnectionString"].ConnectionString))
            {
                using (SqlCommand sqlcmd = new SqlCommand(commandstring, sqlcon))
                {
                    sqlcon.Open(); //opens a connection
                    SqlDataReader read = sqlcmd.ExecuteReader();
                       read.Read();

                  
                    ID= read["ID"].ToString();
                    FirstName= read["FirstName"].ToString();
                    LastName=read["LastName"].ToString();

                    Session["ID"] = @ID;
                    Session["FirstName"] = @FirstName;
                    Session["LastName"] = @LastName;
                    Response.Redirect("Customer_Information.aspx");
                    
                    sqlcon.Close();//close connection 
                                 
                    
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //takes to the Add page
            Response.Redirect("~/Add_Page.aspx");
        }


        //Search function that takes the valvue  from the dropdownlist and searchs that database from that catogery. 
        protected void Search_button_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Hassan_Test_DB_ConnectionString"].ConnectionString))
            {
               string commandstring = "SELECT * FROM [tblCustomer]  WHERE "+DropDownList1.SelectedItem.Text+ "='" + Search_Box.Text + "'";
                try
                {
                    using (SqlCommand sqlcmd = new SqlCommand(commandstring, sqlcon))
                    {
                        sqlcon.Open(); //opens a connection
                        SqlDataReader read = sqlcmd.ExecuteReader();
                        read.Read();

                        ID = read["ID"].ToString();
                        FirstName = read["FirstName"].ToString();
                        LastName = read["LastName"].ToString();

                        Session["ID"] = @ID;
                        Session["FirstName"] = @FirstName;
                        Session["LastName"] = @LastName;
                        Response.Redirect("Customer_Information.aspx");

                    }
                }
                catch (Exception)
                {
                    Response.Write("incorrect format or no data found");
                }
            }
        }






                //public String ID
                //{
                //    get
                //    {
                //        return SeCus_ID_Box.Text;
                //    }
                //}
                //public String FirstName
                //{
                //    get
                //    {
                //        return SeCus_FirstName_Box.Text;
                //    }
                //}
                //public String LastName
                //{
                //    get
                //    {
                //        return SeCus_LastName_Box.Text;
                //    }
                //}
                //public String Address
                //{
                //    get
                //    {
                //        return SeCus_Address_Box.Text;
                //    }
                //}
                //public String Phone
                //{
                //    get
                //    {
                //        return SeCus_Phone_Box.Text;
                //    }
                //}

                //public String Ext
                //{
                //    get
                //    {
                //        return SeCus_Ext_Box.Text;
                //    }
                //}
                //public String Fax
                //{
                //    get
                //    {
                //        return SeCus_Fax_Box.Text;
                //    }
                //}
                //public String Email
                //{
                //    get
                //    {
                //        return SeCus_Email_Box.Text;
                //    }
                //}
                //public String Country
                //{
                //    get
                //    {
                //        return SeCus_Country_Box.Text;
                //    }
                //}
                //public String City
                //{
                //    get
                //    {
                //        return SeCus_City_Box.Text;
                //    }
                //}

            }
    }
