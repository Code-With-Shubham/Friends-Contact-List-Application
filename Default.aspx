<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">
    <title></title>
   <link href="bootstrap/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/bootstrap-4.0.0-dist/js/bootstrap.js"></script>
     <script src="bootstrap/bootstrap-4.0.0-dist/js/jquery.min.js"></script>
    <style>
        .home
        {
            background-image:url("logos/homepage.jpg");
            background-position:center;
            background-repeat:no-repeat;
            background-size:cover;
            font-family:cursive;
            
        }
       .btm
       {
        background-color:wheat;
        padding:30px;
        
       }
       h2{
           font-family:cursive;
           color:darkblue;
           padding:20px;
       }
       
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div class="home">
            <br />
            <br />
               <h2>Friends Information Management Application</h2>
                 <h2>Login Form</h2>
                 <table>
                  <tr>
                    <td>UserID</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Userid"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>Password</td>
                      <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox></td>
                  </tr>
                 <tr>
                 <td></td>
                 <td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logos/login.jpg.jpg" Height="36px" OnClick="ImageButton1_Click" Width="90px"></asp:ImageButton></td>
               </tr>
              </table>
                <br />  
               <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/logos/forgetPassword.jpg.jpg" Height="46px" OnClick="ImageButton3_Click" Width="122px"></asp:ImageButton>
                <hr />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/logos/NewRegistration.jpg.jpg" Height="69px" OnClick="ImageButton2_Click" Width="213px"></asp:ImageButton>
               <br />
            <br /><br />
             &copy;Rommer's Familly Pvt.Ltd<br />
                 Developed in Microsoft ASP.NET
            <br />
            <br />
            

            </a>
                     </center>
              </div>
             
          
    </form>
</body>
</html>
