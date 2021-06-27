<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
        .container{
             background-color:darkslateblue;
             border-radius:5px;
             margin:5px 5px;
             padding:initial;
             font-size:20px;
        }
         .container ul{
              overflow:auto;
         }
      
        .container li a
        {
             text-decoration: none;
             color:whitesmoke;
             padding:3px 3px;
             margin:3px 3px;
             border:1px solid darkblue;
             border-width:2px;
             border-radius:2px;
         }
        .head{
            width:330px;
            border:2px solid blue;
            font-family:cursive;
            color:darkblue;
            font-size:20px;
        }
        .container li {
        float:left;
        list-style: none;
         margin:5px 5px;
        }
        .btm{
           
            font-size:x-large;
            padding:30px;
            border-bottom:2px solid darkblue;
            margin:5px;
            border-radius:5px;
        }
        .btm a{
          
            text-decoration:none;
            background-color:;
            padding:3px;
            color:darkblue;
            border-radius:2px;
        }
        
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        <div> <link rel="stylesheet" href="body.css" />
        <center>
            
         <br /> <br />
            <div class="head">
                      WelCome :<asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
           <header>
               <nav class="container">
             <ul>
                 <li> <a href="User.aspx">Home</a></li>
                 <li><a href="AboutYou.aspx">About</a></li>
                 <li><a href="Setting.aspx">Setting</a><li>
                 <li><a href="Contactus.aspx">Contact Us</a></li>  
                 <li><a href="help.aspx">Help</a></li>
            </ul>
                   </nav>
            </header>
            </center>
             </div>
            <center>
            <div class="btm">
            
            <a href="AddFriend.aspx">Add Friend</a><br /><br />
            <a href="ShowFriends.aspx">Show Friend</a><br /><br />
            <a href="ContactTOFriend.aspx">Contact to Friends</a><br />
            </div><br /><br />
                 &copy;Rommer's Familly Pvt.Ltd<br />
                 Developed in Microsoft ASP.NET
           </center>

    </form>
</body>
</html>
