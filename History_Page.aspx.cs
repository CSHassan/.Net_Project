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
    public partial class History_Page : System.Web.UI.Page
    {
        private bool isPostBack;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!isPostBack)
            {
                CusHis_ID_Box.Text = Session["ID"] as string;
                CusHis_FirstName_Box.Text = Session["FirstName"] as string;
                CusHis_LastName_Box.Text = Session["LastName"] as string;
            }
        }



        // Method for showing gridview data if it fails to load

        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    // button for showing the datagridview

        //     string commandstring = "SELECT OrderDate,ProductName,UnitPrice,Quantity,UnitPrice*Quantity AS Total FROM [tblOrder],[tblProduct],[tblOrderItem]  WHERE  CustomerId ='" + CusHis_ID_Box.Text + "'" + "AND tblOrderItem.ID = tblProduct.ID";

        //    using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Hassan_Test_DB_ConnectionString"].ConnectionString))
        //    {
        //        SqlDataAdapter adapt = new SqlDataAdapter(commandstring, sqlcon);
        //        DataSet DS = new DataSet();
        //        sqlcon.Open();
        //        adapt.Fill(DS, "OrderDate,ProductName,UnitPrice,Quantity");

        //        sqlcon.Close();
        //         }
        //}

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Takes to the Main page
            Response.Redirect("~/FirstWebPage.aspx");
        }

        protected void History_Print_Button_Click(object sender, EventArgs e)
        {
            //function for printing the page usint windows
            ClientScript.RegisterClientScriptBlock(this.GetType(), "key", "window.print()", true);

        }
    }
}