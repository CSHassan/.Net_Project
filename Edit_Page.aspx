﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Page.aspx.cs" Inherits="WebApplication1.Edit_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Customer</title>
    <style type="text/css">
        .header{
            text-align:center;
            font-size:26px;
            
        }
        .Gridview{
            width:1194px;
            margin-left:0px;
            margin-right:auto;
            height: 197px;
        }
        .buttons{
            text-align:center;
        }
        .textboxs{
            text-align:center;

        }

    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="header">
      
    
        Edit Customer<br />
        <br />
   </div>

    <div class ="textboxs">
                <asp:Label ID="Label1" runat="server" Text="ID:"></asp:Label>
        
        <asp:TextBox ID="EdCus_ID_Box" runat="server"  Width="99px" style="height: 22px" ></asp:TextBox>
    
    
                <br />
                <br />
    
    
        <asp:Label ID="Label2" runat="server" Text="FirstName:"></asp:Label>
        <asp:TextBox ID="EdCus_FirstName_Box" runat="server" Width="128px"></asp:TextBox>
        <p>
            Last Name:<asp:TextBox ID="EdCus_LastName_Box" runat="server" Width="125px"></asp:TextBox>
        </p>
        </div>

            <div class="Gridview">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="125px" Width="543px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                    <asp:BoundField DataField="Ext" HeaderText="Ext" SortExpression="Ext" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Hassan_Test_DB_ConnectionString %>" DeleteCommand="DELETE FROM [tblCustomer] WHERE [ID] = @original_ID AND [FirstName] = @original_FirstName AND [Country] = @original_Country AND [City] = @original_City AND [LastName] = @original_LastName AND [Phone] = @original_Phone AND (([Fax] = @original_Fax) OR ([Fax] IS NULL AND @original_Fax IS NULL)) AND (([Ext] = @original_Ext) OR ([Ext] IS NULL AND @original_Ext IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" InsertCommand="INSERT INTO [tblCustomer] ([ID], [FirstName], [Country], [City], [LastName], [Phone], [Fax], [Ext], [Email], [Address]) VALUES (@ID, @FirstName, @Country, @City, @LastName, @Phone, @Fax, @Ext, @Email, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [FirstName], [Country], [City], [LastName], [Phone], [Fax], [Ext], [Email], [Address] FROM [tblCustomer] WHERE (([ID] = @ID) AND ([FirstName] = @FirstName) AND ([LastName] = @LastName))" UpdateCommand="UPDATE [tblCustomer] SET [FirstName] = @FirstName, [Country] = @Country, [City] = @City, [LastName] = @LastName, [Phone] = @Phone, [Fax] = @Fax, [Ext] = @Ext, [Email] = @Email, [Address] = @Address WHERE [ID] = @original_ID AND [FirstName] = @original_FirstName AND [Country] = @original_Country AND [City] = @original_City AND [LastName] = @original_LastName AND [Phone] = @original_Phone AND (([Fax] = @original_Fax) OR ([Fax] IS NULL AND @original_Fax IS NULL)) AND (([Ext] = @original_Ext) OR ([Ext] IS NULL AND @original_Ext IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Phone" Type="String" />
                    <asp:Parameter Name="original_Fax" Type="String" />
                    <asp:Parameter Name="original_Ext" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="Ext" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="ID" SessionField="ID" Type="Int32" />
                    <asp:SessionParameter Name="FirstName" SessionField="FirstName" Type="String" />
                    <asp:SessionParameter Name="LastName" SessionField="LastName" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="Ext" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Phone" Type="String" />
                    <asp:Parameter Name="original_Fax" Type="String" />
                    <asp:Parameter Name="original_Ext" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
                </div>
        
        <br />
        <br />
        <div class="buttons">
        <asp:Button ID="Main_Btn" runat="server" Text="Main" OnClick="Main_Btn_Click" Width="79px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="EdCus_Print_Button" runat="server" OnClick="EdCus_Print_Button_Click1" Text="Print" Width="88px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Add Entry" OnClick="Button4_Click" />
    </div>
    &nbsp;&nbsp;
    
    
    </form>
</body>
</html>