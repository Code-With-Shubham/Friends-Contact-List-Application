<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactTOFriend.aspx.cs" Inherits="ContactTOFriend" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
            <center>
              <h2>SMS & Email from ASP.Net</h2>
     
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SMSSend.aspx">Send SMS</asp:HyperLink>
       
                </center>
        </div>
    </form>
</body>
</html>
