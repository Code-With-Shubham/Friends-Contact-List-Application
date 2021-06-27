<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowFriends.aspx.cs" Inherits="ShowFriends" %>

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
                 <br />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logos/CollegeFD.jpg" Height="70px" OnClick="ImageButton1_Click" Width="233px"></asp:ImageButton>
                  <br />
                  <br />
                 <br />
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/logos/SchoolFriends.jpg.jpg" Height="79px" OnClick="ImageButton2_Click" Width="232px"></asp:ImageButton>
                  <br />
                  <br />
                 <br />
                 <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/logos/officefd (1).png" Height="74px" OnClick="ImageButton3_Click" Width="214px"></asp:ImageButton>
                  <br />
                  <br />
                 <br />
                 <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/logos/ChildhoodFriends.jpg.jpg" Height="79px" OnClick="ImageButton4_Click" Width="245px"></asp:ImageButton>
                  <br />
                  <br />
                 <br />
                 <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/logos/otherFriends.jpg" Height="74px" OnClick="ImageButton5_Click" Width="223px"></asp:ImageButton>
                 <br />
                 <br />
                 <hr />
                 <br />
                 <a href="User.aspx">back</a>
                 <br />
                 <br />

             </center>
        </div>
    </form>
</body>
</html>
