<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Setting.aspx.cs" Inherits="Setting" %>

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
                <br />
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logos/EditProfile.jpg.jpg" Height="95px" OnClick="ImageButton1_Click" Width="113px"></asp:ImageButton>
                <br />
                Edit profile<br />
                <br />
                <br />
              <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/logos/ChangePassword.jpg.jpg" Height="109px" OnClick="ImageButton2_Click" Width="138px"></asp:ImageButton>
            <br />
                Change Password<br />
                <br />
                <br />
              <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/logos/logout.jpg.png" Height="71px" OnClick="ImageButton3_Click1" Width="146px"></asp:ImageButton>
             <br />
            <hr />
            <br />
            <a href="User.aspx">Back</a>
                </center>
        </div>
    </form>
</body>
</html>
