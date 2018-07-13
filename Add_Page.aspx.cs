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
    public partial class Add_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Main_Btn_Click(object sender, EventArgs e)
        {

            //button for taking to the main page
            Response.Redirect("~/FirstWebPage.aspx");
        }
        protected void Save_btn_Click(object sender, EventArgs e)
        {

            String ID = AdCus_ID_Box.Text;
            String FirstName = AdCus_FirstName_Box.Text;
            String LastName = AdCus_LastName_Box.Text;
            String Address = AdCus_Address_Box.Text;
            String Phone = AdCus_Phone_Box.Text;
            String PhoneExt = AdCus_Ext_Box.Text;
            String Fax = AdCus_Fax_Box.Text;
            String Email = AdCus_Email_Box.Text;
            String Country = AdCus_Country_Box.Text;
            String City = AdCus_City_Box.Text;

            String commandstring = "INSERT INTO tblCustomer(ID,FirstName,LastName,Address,Phone,Ext,Fax,Email,City,Country) Values(@ID,@FirstName,@LastName,@Address,@Phone,@PhoneExt,@Fax,@Email,@Country,@City)";

            // Saves the information the a database

            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Hassan_Test_DB_ConnectionString"].ConnectionString))
            {
                using (SqlCommand sqlcmd = new SqlCommand(commandstring, sqlcon))
                {
                    try
                    {
                        

                        sqlcon.Open(); //opens a connection

                        sqlcmd.Parameters.AddWithValue("@ID", AdCus_ID_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@firstname", AdCus_FirstName_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@lastname", AdCus_LastName_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@address", AdCus_Address_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@phone", AdCus_Phone_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@phoneext", AdCus_Ext_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@fax", AdCus_Fax_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@email", AdCus_Email_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@country", AdCus_Country_Box.Text);
                        sqlcmd.Parameters.AddWithValue("@city", AdCus_City_Box.Text);


                        try
                        {
                           
                            Int32 rowsAffected = sqlcmd.ExecuteNonQuery();
                            Response.Write(rowsAffected);
                            Response.Write("Data Added to the DB");
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex.Message);
                        }
                        
                        
                        sqlcon.Close();
                    }
                    catch (SqlException)
                    {

                    }
                }





            }//end of sqlconnection
        }

        
    }
}