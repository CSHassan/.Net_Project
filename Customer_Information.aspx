<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Information.aspx.cs" Inherits="WebApplication1.Customer_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

     #Customer_Information_Form {
            width: 900px;
            height: 550px;
            background-color:dodgerblue;
            text-align:center;
            margin:auto;
            border:double;
            
        }
     .CusInfo_Title{
         margin-left:auto;
         margin-right:auto;
     }

    .Block_1{
            display:inline-block;
           text-align:left;
            width: 826px;
            margin-right: auto;
            height: 333px;
            margin-left: auto;
        }
     h3{
         text-align:center;
         padding: 10px 10px 10px 10px;
         font:bold 25px arial;
            width: 875px;
        background-color:dimgrey;
        }

        </style>
</head>
<body style="height: 727px">
    <form id="Customer_Information_Form" runat="server">
    
     
                                                                            <h3>Customer Information</h3>
    
     
    <div class="Block_1">
        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SeCus_ID_Box" runat="server"  Width="99px" style="height: 22px"  ></asp:TextBox>
    
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="FirstName:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="SeCus_FirstName_Box" runat="server" Width="208px" Height="19px"></asp:TextBox>
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            Last Name: &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="SeCus_LastName_Box" runat="server" Width="176px" Height="21px" style="margin-left: 0px"></asp:TextBox>
        
        <br />
        <br />
        
        <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="SeCus_Address_Box" runat="server" Width="211px"></asp:TextBox>
        
            <br />
        <br />
        
            <asp:Label ID="Label5" runat="server" Text="Tel 1:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="SeCus_Phone_Box" runat="server" Width="213px"></asp:TextBox>
        
       
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ext:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="SeCus_Ext_Box" runat="server" Width="46px" Height="16px"></asp:TextBox>
       
        
          
        <br />
        <br />
       
        
          
        <asp:Label ID="Label6" runat="server" Text="Tel 2:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="216px"></asp:TextBox>
       
            &nbsp;&nbsp;&nbsp; &nbsp;
       
            Ext:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" Width="43px"></asp:TextBox>
       
        
          
        
        
       
            &nbsp;&nbsp;<br />
        <br />
        &nbsp;Fax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="SeCus_Fax_Box" runat="server" Width="214px" style="margin-left: 0px"></asp:TextBox>
        
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email Address:&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="SeCus_Email_Box" runat="server" Width="208px"></asp:TextBox>
        
        
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
        
        
            Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="SeCus_Country_Box" runat="server" Width="214px"></asp:TextBox>
       
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="SeCus_City_Box" runat="server" Width="204px"></asp:TextBox>
         </div>
        <br />
        &nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
        <br />
        <br />
        
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Main" Width="58px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Show Purchase History" OnClick="Button1_Click" Width="179px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Edit" Width="75px" Height="29px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Add Entry" OnClick="Button4_Click" Width="98px" Height="30px" />
    </form>
</body>
</html>
