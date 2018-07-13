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
    public partial class Customer_Information : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           // retreiving id,firstname,lastname from FirstWebPage 
            SeCus_ID_Box.Text =  Session["ID"] as string;
            SeCus_FirstName_Box.Text =  Session["FirstName"] as string;
            SeCus_LastName_Box.Text = Session["LastName"] as string;


            //sets the property for all the fileds as read only
            SeCus_ID_Box.Attributes.Add("readonly", "readonly");
            SeCus_FirstName_Box.Attributes.Add("readonly", "readonly");
            SeCus_LastName_Box.Attributes.Add("readonly", "readonly");
            SeCus_Phone_Box.Attributes.Add("readonly", "readonly");
            SeCus_Ext_Box.Attributes.Add("readonly", "readonly");
            SeCus_Fax_Box.Attributes.Add("readonly", "readonly");
            SeCus_Email_Box.Attributes.Add("readonly", "readonly");
            SeCus_Address_Box.Attributes.Add("readonly", "readonly");
            SeCus_Country_Box.Attributes.Add("readonly", "readonly");
            SeCus_City_Box.Attributes.Add("readonly", "readonly");


            //check to see if firstname and ID isnt null and print out the database information into there boxes
            if (SeCus_FirstName_Box != null & SeCus_ID_Box != null)
            {
                string commandstring = "SELECT * FROM [tblCustomer]  WHERE FirstName ='" + SeCus_FirstName_Box.Text + "'";

                using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Hassan_Test_DB_ConnectionString"].ConnectionString))
                {
                    using (SqlCommand sqlcmd = new SqlCommand(commandstring, sqlcon))
                    {
                        sqlcon.Open(); //opens a connection
                        SqlDataReader read = sqlcmd.ExecuteReader();
                        read.Read();


                        SeCus_Country_Box.Text = read["Country"].ToString();
                        SeCus_City_Box.Text = read["City"].ToString();
                        SeCus_Phone_Box.Text = read["Phone"].ToString();
                        SeCus_Fax_Box.Text = read["Fax"].ToString();
                        SeCus_Address_Box.Text = read["Address"].ToString();
                        SeCus_Email_Box.Text = read["Email"].ToString();
                        SeCus_Ext_Box.Text = read["Ext"].ToString();
                        sqlcon.Close();//close connection 


                    }
                }
            }
            else
            {
                Console.WriteLine("Error! No entry found in FirstName");

            }
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            //Takes to the Main page
            Response.Redirect("~/FirstWebPage.aspx");
        }

        public string FirstName;
        public string LastName;
        protected void Button6_Click(object sender, EventArgs e)
        {
            //Takes to the Edit Page
            // this try method allows me to not show sensative information such as id number;
            try
            {
                 
             
                Session["ID"] = SeCus_ID_Box.Text;
                Session["FirstName"] = SeCus_FirstName_Box.Text;
                Session["LastName"] = SeCus_LastName_Box.Text;
                Response.Redirect("Edit_Page.aspx");
            }

            catch (Exception)
            {
                Console.WriteLine("No purchase history found");
            }


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //takes to the Add page
           
            Response.Redirect("~/Add_Page.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Show histroy Button

            try
            {
                Session["ID"] = SeCus_ID_Box.Text;
                Session["FirstName"] = SeCus_FirstName_Box.Text;
                Session["LastName"] = SeCus_LastName_Box.Text;
                Response.Redirect("History_Page.aspx");
            }
           
            catch (Exception)
            {
                Console.WriteLine("No purchase history found");
            }

        }
    }
}