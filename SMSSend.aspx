<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SMSSend.aspx.cs" Inherits="SMSSend" %>

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
                 <h2>SMS from ASP.Net</h2>
                <br /><hr />
    <table cellpadding="5" cellspacing="4">
        <tr>
            <td>Mobile</td>
            <td><asp:TextBox ID="txtmobile" runat="server" autocomplete="off"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Message</td>
            <td><asp:TextBox ID="txtmsg" TextMode="MultiLine" Rows="3" Columns="20" runat="server"></asp:TextBox></td>
        </tr>
        <tr><td></td>
            <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Send" OnClick="SendMsg" /></td>
        </tr>
    </table><br />
                <br />
                <hr /><br />
                <a href="User.aspx">Home</a>
            </center>
        </div>
    </form>
</body>
</html>
