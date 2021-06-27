<%@ Page Language="C#" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        p{
            color:darkblue;
            
        }
        a{
            text-decoration:none;
        }
    </style>
</head>
<body>
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
           
            <br />
           <p> The Friends Information Management Application provide the facility to store and retrive the friends information </p>
            Notes:-
            <br />
            
            If you want to add the friend click on "Add Friend" link and fill information.<br />
            If You want to edit profile click on "Setting".<br />
            If You want to show friend information click on "Show Friend".<br />
            If You want to contact friends click on "Contact to friend".<br />
            If You want to show your profile click on "About".<br />
            <br />
            <br />
            <hr />
            <br />
            <a href="User.aspx">Home</a>
            <br />
        </div>
    </form>
</body>
</html>
