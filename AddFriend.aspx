<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFriend.aspx.cs" Inherits="AddFriend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 310px;
            height: 200px;
        }
        .container a{
            text-decoration:none;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <link rel="stylesheet" href="body.css" />
            <center>
                <br />
                <h2>Enter your friend information</h2>
                <br /><hr /><br />
                <table class="auto-style1">
                    <tr>
                         <td>Friend Name</td>
                         <td><asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                         <td>Friend Mobile</td>
                         <td><asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>
                    <tr>
                         <td>Address</td>
                         <td><asp:TextBox ID="TextBox3" runat="server" autocomplete="off" Height="22px"></asp:TextBox></td>
                    </tr>
                   <tr>
                        <td>Friend from</td>
                        <td>
                                  <asp:DropDownList ID="DropDownList1" runat="server">
                                  <asp:ListItem>Other</asp:ListItem>
                                  <asp:ListItem>School</asp:ListItem>
                                  <asp:ListItem>College</asp:ListItem>
                                  <asp:ListItem>Office</asp:ListItem>
                                  <asp:ListItem>Childhood</asp:ListItem>
                                  </asp:DropDownList>
                         </td>
                    </tr>
                    <tr>
                         <td>About Friends</td>
                         <td><asp:TextBox ID="TextBox4" runat="server" autocomplete="off" Height="22px" Width="128px"></asp:TextBox></td>
                    </tr>
                    <tr>
                         <td></td>
                         <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button></td>
                    </tr>
               </table>
                 <br /> <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br /><hr /> <br />
                     <a href="User.aspx">Back</a>
                    <br /><br />
              </center>
        </div>
    </form>
</body>
</html>
