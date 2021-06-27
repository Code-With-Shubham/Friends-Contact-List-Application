<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

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
                <h2>Sent Successfully...</h2>
                
    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ContactTOFriend.aspx">Home</asp:HyperLink>
                <br />
                 <a href="User.aspx">back</a>
            </center>
        </div>
    </form>
</body>
</html>
