<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container{
          
            font-size:x-large;
         }
        
        .container a{
              text-decoration:none;
              padding:5px;
              margin:5px;
              border:2px solid darkblue;

        }
    </style>
</head>
<body>
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <center>
                 <h2 >Logged in as Admin :<asp:Label ID="Label1" runat="server" forecolor="#000066"></asp:Label></h2> 
                <br />
                <hr />
               <a href="ControlUser.aspx">Control Groups</a><br /><br />
               <a href="logoutAdmin.aspx">Logout</a>
                <br />
                <hr />
                <br />
                 &copy;Rommer's Familly Pvt.Ltd<br />
                 Developed in Microsoft ASP.NET
                </center>
        </div>
    </form>
</body>
</html>
