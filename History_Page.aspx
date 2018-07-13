<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History_Page.aspx.cs" Inherits="WebApplication1.History_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body {
            padding: 10px 10px 10px 10px;
            background-color:dodgerblue;
            margin-left:auto;
            margin-right:auto;
            width: 600px;
            height: auto;
            border:double;
        }
        .header{
            font:bold 25px arial;
            height:25px;
            text-align:center;
           background-color:dimgrey;
             padding: 5px 5px 5px 5px;

        }
        .Textboxs{
          text-align:center;
          padding-top:2em;
        }
       .gridview{
        
            width:600px;
            margin-left:auto;
            margin-right:auto;
            padding-left:4em;
            
        }
       .buttons{
           text-align:center;
           padding: 8px,8px,8px,8px;
          
          
       }
       
           </style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="body">
    
    <div class="header">    
      Purchase History
            </div>

         <div class="Textboxs">
        <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CusHis_ID_Box" runat="server"  Width="71px"  ></asp:TextBox>
    
        <br />
    
        <br />
    
       
        <asp:Label ID="Label2" runat="server" Text="FirstName:"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CusHis_FirstName_Box" runat="server" Width="128px"></asp:TextBox>
        <p>
            Last Name:&nbsp;&nbsp; <asp:TextBox ID="CusHis_LastName_Box" runat="server" Width="125px"></asp:TextBox>
        </p>
            </div>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="gridview">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="18px" Width="491px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        
       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hassan_Test_DB_ConnectionString %>" SelectCommand="SELECT tblOrder.OrderDate, tblProduct.ProductName, tblProduct.UnitPrice, tblOrderItem.Quantity, tblProduct.UnitPrice * tblOrderItem.Quantity AS Total FROM tblOrderItem INNER JOIN tblProduct ON tblOrderItem.ID = tblProduct.ID CROSS JOIN tblOrder WHERE (tblOrder.CustomerId = @ID)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="" Name="ID" SessionField="ID" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
       
       
       
        <div class="buttons">
       <asp:Button ID="History_Print_Button" runat="server" style="padding:5px 5px 5px 5px" Text="Print" Width="86px" Height="25px" OnClick="History_Print_Button_Click"/>
           <asp:Button ID="Button5" runat="server" style="padding:5px 5px 5px 5px" OnClick="Button5_Click" Text="Main" Width="86px" Height="25px" />
             
      </div>
    
    </form> 
     </div>
</body>
</html>
