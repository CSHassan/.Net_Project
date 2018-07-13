<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstWebPage.aspx.cs" Inherits="WebApplication1.FirstWebPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 600px;
            background-color:dodgerblue;
            width:500px;
           margin:auto;
           border:double;

            
        }
       

        .Dropdownbox_Customer
        {
        
         align-content:center;
         vertical-align:middle;
         text-align:center;
         padding-bottom: 2em;
         padding-top: 3em;
            height: 92px;
        }

        h3
        {font: bold 20px arial;
         background-color:dimgrey;
          padding: 10px 10px 10px 10px;
         margin-left:auto;
         margin-right:auto;

        }
        .Buttons{
            text-align:center;
            
        }
        .Select_Customer_Button{
         
         padding-right:2em;
         display: inline-block;
            width: 132px;
        }
        .Add_Customer_Button{
            
            padding-left: 2em;
            display: inline-block;
        }
        .Search{
            text-align: center;
        }
        .Search_Label{
           font: 16px arial;
           display:inline-block;
           padding-right: 1em;
        }
        .Search_Dropdown{
            display:inline-block;
            
        }
        .Search_Text{
           
             display:inline-block;
        }
        .Search_Button{
             display:inline-block;
             padding-top: 5px;
            
        }
        .form1{
            background-color:ActiveBorder;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div class="Dropdownbox_Customer">

        <h3> Customer Name:</h3><br /><asp:DropDownList ID="Customer_Box" runat="server" DataSourceID="SqlDataSource1" DataTextField="FullName" DataValueField="FullName" Width="236px">
        </asp:DropDownList>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hassan_Test_DB_ConnectionString %>" SelectCommand="SELECT * FROM [tblCustomer]"></asp:SqlDataSource>
        <div class="Buttons"> <div class="Select_Customer_Button"><asp:Button ID="Select_Customer_Button" runat="server" Height="37px" OnClick="Button1_Click" Text="Select a Customer" Width="132px" /></div>
        <div class="Add_Customer_Button"> <asp:Button ID="Button2" runat="server" Height="37px" Text="Add a New Customer" OnClick="Button2_Click" Width="137px"/></div></div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="Search">
        <div class="Search_Label"> <asp:Label ID="Label3" runat="server" Text="Search By:"></asp:Label></div>
        <div class="Search_Dropdown"><asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="113px"></asp:DropDownList></div>
       
        <br />
        <br />
        <div class="Search_Text"><asp:TextBox ID="Search_Box" runat="server" Height="25px" Width="203px" AutoCompleteType="Enabled"></asp:TextBox></div>
        <br />
        <div class="Search_Button"><asp:Button ID="Search_button" runat="server" OnClick="Search_button_Click" Text="Search" Height="31px" Width="90px" /></div> </div>
    </form>
</body>
</html>
