<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeName.aspx.cs" Inherits="ChangeName" %>

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
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
             <center>
                <h2>Change name form</h2>
                <hr />
                <br />
                <table>
                    <tr>
                        <td>Current Name</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>New Name </td>
                        <td><asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>Conform Name</td>
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
            </center>
        </div>
    </form>
</body>
</html>
