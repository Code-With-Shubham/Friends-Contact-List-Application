<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlUser.aspx.cs" Inherits="ControlUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container a{
            text-decoration:none;
        }
        .container h2{
            color:darkblue;
        }
    </style>
</head>
<body>
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
             <center>
                  <br />
                  <br />
                  <br />
                 <h2>Users details</h2><br /><hr />
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="userid" HeaderText="Userid" ReadOnly="True" SortExpression="userid" />
                        <asp:BoundField DataField="nm" HeaderText="Name" SortExpression="nm" />
                        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                        <asp:BoundField DataField="gn" HeaderText="Gender" SortExpression="gn" />
                        <asp:BoundField DataField="mono" HeaderText="Mobile" SortExpression="mono" />
                        <asp:BoundField DataField="email" HeaderText="EmailID" SortExpression="email" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeProjectConnectionString3 %>" DeleteCommand="DELETE FROM [users] WHERE [userid] = @userid" InsertCommand="INSERT INTO [users] ([userid], [nm], [age], [gn], [mono], [email]) VALUES (@userid, @nm, @age, @gn, @mono, @email)" SelectCommand="SELECT [userid], [nm], [age], [gn], [mono], [email] FROM [users]" UpdateCommand="UPDATE [users] SET [nm] = @nm, [age] = @age, [gn] = @gn, [mono] = @mono, [email] = @email WHERE [userid] = @userid">
                     <DeleteParameters>
                         <asp:Parameter Name="userid" Type="String" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="userid" Type="String" />
                         <asp:Parameter Name="nm" Type="String" />
                         <asp:Parameter Name="age" Type="Int32" />
                         <asp:Parameter Name="gn" Type="String" />
                         <asp:Parameter Name="mono" Type="String" />
                         <asp:Parameter Name="email" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="nm" Type="String" />
                         <asp:Parameter Name="age" Type="Int32" />
                         <asp:Parameter Name="gn" Type="String" />
                         <asp:Parameter Name="mono" Type="String" />
                         <asp:Parameter Name="email" Type="String" />
                         <asp:Parameter Name="userid" Type="String" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                 <br />
                  <br />
              <hr />
                <br />
                 <a href="AdminPanel.aspx">Back</a>
                 </center>
        </div>
    </form>
</body>
</html>
