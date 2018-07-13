<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_Page.aspx.cs" Inherits="WebApplication1.Add_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     h3{
         text-align:center;
         font:bold 25px arial;
         background-color:dimgrey;
          padding: 10px 10px 10px 10px;


     }
     .Buttons{
         text-align:center;
         margin-left:auto;
         margin-right:auto;
     }
     .Body{
         width:100%;
         height:100%;
         background-color:lightblue;
     }
     #form1{
         background-color:dodgerblue;
         width:900px;
         height:550px;
         margin-left:auto;
         margin-right:auto;
         border:double;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
    
    
        <h3>Add Customer<br /></h3>
        <br />
    
        <div class="body">
        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:TextBox ID="AdCus_ID_Box" runat="server"  Width="99px" style="height: 22px"></asp:TextBox>
    
        <br />
    
        <br />
    
    
        <asp:Label ID="Label2" runat="server" Text="FirstName:"></asp:Label>
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AdCus_FirstName_Box" runat="server" Width="226px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            Last Name&nbsp;&nbsp;&nbsp; <asp:TextBox ID="AdCus_LastName_Box" runat="server" Width="125px"></asp:TextBox>
        
      
        <br />
        <br />
        
        <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AdCus_Address_Box" runat="server" Width="225px"></asp:TextBox>
        
            <br />
        <br />
        
            <asp:Label ID="Label5" runat="server" Text="Tel 1:"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="AdCus_Phone_Box" runat="server" Width="231px"></asp:TextBox>
        
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ext:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AdCus_Ext_Box" runat="server" Width="42px"></asp:TextBox>
       
       <br />
        <br />
       
        <asp:Label ID="Label6" runat="server" Text="Tel 2:"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="TextBox7" runat="server" Width="226px"></asp:TextBox>
        
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         
            Ext:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" Width="43px"></asp:TextBox>
       
            
       
            <br />
        <br />
       
            
       
            Fax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="AdCus_Fax_Box" runat="server" Width="231px"></asp:TextBox>
       
            
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            
       
            Email Address:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="AdCus_Email_Box" runat="server" Width="228px"></asp:TextBox>
       
        
           <br />
        <br />
        Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="AdCus_Country_Box" runat="server" Width="225px"></asp:TextBox>
        
        
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
          City&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="AdCus_City_Box" runat="server" Width="226px"></asp:TextBox>
        
        <br />
        <br />
        
        <div class="Buttons">
        <asp:Button ID="Save_btn" runat="server" Text="Save" OnClick="Save_btn_Click" Height="29px" Width="81px" />
        <br />
        <br />
        <asp:Button ID="Main_Btn" runat="server" Text="Main" OnClick="Main_Btn_Click" Width="85px" />
       &nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button4" runat="server" Text="Add Another Entry" Width="126px" />

            </div>
        </div>
    
    </form>
</body>
</html>
