<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutYou.aspx.cs" Inherits="AboutYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container a{
            text-decoration:none;
        }
       
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div> <link rel="stylesheet" href="body.css" />
            <center class="container">
                <br />
                <br />
                <h2>Your Profile</h2>
                <br /><hr /><br />
             <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="userid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Height="189px" Width="249px">
                 <EditItemTemplate>
                     userid:
                     <asp:Label ID="useridLabel1" runat="server" Text='<%# Eval("userid") %>' />
                     <br />
                     nm:
                     <asp:TextBox ID="nmTextBox" runat="server" Text='<%# Bind("nm") %>' />
                     <br />
                     age:
                     <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                     <br />
                     gn:
                     <asp:TextBox ID="gnTextBox" runat="server" Text='<%# Bind("gn") %>' />
                     <br />
                     mono:
                     <asp:TextBox ID="monoTextBox" runat="server" Text='<%# Bind("mono") %>' />
                     <br />
                     email:
                     <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                     <br />
                     <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                     &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                 </EditItemTemplate>
                 <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                 <FooterStyle BackColor="#CCCCCC" />
                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                 <InsertItemTemplate>
                     userid:
                     <asp:TextBox ID="useridTextBox" runat="server" Text='<%# Bind("userid") %>' />
                     <br />
                     nm:
                     <asp:TextBox ID="nmTextBox" runat="server" Text='<%# Bind("nm") %>' />
                     <br />
                     age:
                     <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                     <br />
                     gn:
                     <asp:TextBox ID="gnTextBox" runat="server" Text='<%# Bind("gn") %>' />
                     <br />
                     mono:
                     <asp:TextBox ID="monoTextBox" runat="server" Text='<%# Bind("mono") %>' />
                     <br />
                     email:
                     <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                     <br />
                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                     UserID:
                     <asp:Label ID="useridLabel" runat="server" Text='<%# Eval("userid") %>' />
                     <br />
                     Name:
                     <asp:Label ID="nmLabel" runat="server" Text='<%# Bind("nm") %>' />
                     <br />
                     Age:
                     <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                     <br />
                     Gender:
                     <asp:Label ID="gnLabel" runat="server" Text='<%# Bind("gn") %>' />
                     <br />
                     Mobile:
                     <asp:Label ID="monoLabel" runat="server" Text='<%# Bind("mono") %>' />
                     <br />
                     Email:
                     <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                     <br />
                 </ItemTemplate>
                 <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                 <RowStyle BackColor="White" />
                </asp:FormView>

                <br />

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeProjectConnectionString5 %>" SelectCommand="SELECT [userid], [nm], [age], [gn], [mono], [email] FROM [users] WHERE ([userid] = @userid)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="na" Name="userid" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

               <asp:Label ID="Label1" runat="server" ></asp:Label><br /><hr /><br />
             <a href="User.aspx">back</a><br /><br />
            </center>
        </div>
    </form>
</body>
</html>
