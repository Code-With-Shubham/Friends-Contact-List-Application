<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container a{
            text-decoration:none;
        }
        h2{
            color:darkblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" href="body.css" />
        <div class="container">
            <center>
                <h2>New Password form</h2>
            <hr />
            <table>
                <tr>
                    <td>Current Password </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>New Password </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Confirm password </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox>
                       

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Change" /></td>
                    <td></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="l1" runat="server"></asp:Label>
            <br /><hr /><br />
                <a href="Setting.aspx">Back</a>
            </center>
        </div>
    </form>
</body>
</html>
