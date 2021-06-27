<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container a{
            text-decoration:none;
           
            font-size:x-large;
           
            padding:5px;
        }
        .container h2{
            color:darkblue;
        }
        .data a{
            text-decoration:none;
        }
        
    </style>
</head>
<body>
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
             <center>
                <br />
                <br /><h2>Edit Profile</h2><br /><hr />
                <br />
                <a href="ChangeName.aspx">Change Name</a>
                <br />
                <br />
                <a href="ChangeMono.aspx">Change mobile</a>
                <br />
                <br />
                 <a href="ChangeUserid.aspx">Change Userid</a>
                 </center>
                 </div>
            <br /><hr />
            <br />
                  <div class="data"><center>
            <a href="Setting.aspx">Back</a>
                 </center>
        </div>
    </form>
</body>
</html>
