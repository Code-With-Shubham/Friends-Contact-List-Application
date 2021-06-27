<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeUserid.aspx.cs" Inherits="ChangeUserid" %>

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
        <link rel="stylesheet" href="body.css" />
        <div class="container">
            <center>
                <h2>Change UserID form</h2>
                <hr />
                <br />
                 <table>
                    <tr>
                        <td>Current UserID</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>New UserID </td>
                        <td><asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>Conform UserID</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                     <tr>
                        <td></td>
                        <td><asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click"></asp:Button></td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                 <br />
                 <hr />
                 <br />
                  <a href="EditProfile.aspx">Back</a>
                 <br />
                 <br />
                 <br />
            </Center>
        </div>
    </form>
</body>
</html>
