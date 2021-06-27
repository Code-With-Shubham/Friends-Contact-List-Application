<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeMono.aspx.cs" Inherits="ChangeMono" %>

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
                <br />
                <br />
                <h2>Change mobile form</h2>
                <br />
                <hr />
                <br />
                <table>
                    <tr>
                        <td>Current Mobile</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>New Mobile</td>
                        <td><asp:TextBox ID="TextBox2" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>Confirm Mobile</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox></td>
                    </tr>

                     <tr>
                        <td></td>
                        <td><asp:Button ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" style="height: 26px"></asp:Button></td>
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
