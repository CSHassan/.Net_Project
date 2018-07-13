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
    public partial class Edit_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EdCus_ID_Box.Text = Session["ID"] as string;
            EdCus_FirstName_Box.Text = Session["FirstName"] as string;
            EdCus_LastName_Box.Text = Session["LastName"] as string;


        }

        protected void Main_Btn_Click(object sender, EventArgs e)
        {
            //Takes to the Main page
            Response.Redirect("~/FirstWebPage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //redirects to the add page
            Response.Redirect("~/Add_Page.aspx");
        }

      

        protected void EdCus_Print_Button_Click1(object sender, EventArgs e)
        {
            //prints the page
            ClientScript.RegisterClientScriptBlock(this.GetType(), "key", "window.print()", true);
        }

      
    }
    }

  
  

