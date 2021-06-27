<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPass.aspx.cs" Inherits="ForgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      
        .first a{
            text-decoration:none;
            font-size:20px;
        }
        .first h2{
            color:darkblue;
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <link rel="stylesheet" href="body.css" />
        <div class="first">
            <center>
                <h2>Password recovery form</h2>
            <hr />
            <table>
                <tr>
                    <td>UserId</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>
                    </td>
               </tr>

               <tr>
                    <td>security Question</td>
                      <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>What is PAN card no.?</asp:ListItem>
                            <asp:ListItem>What is your future?</asp:ListItem>
                            <asp:ListItem>What is your Education?</asp:ListItem>
                             <asp:ListItem>Which is your favorite Programming language?</asp:ListItem>
                             <asp:ListItem>What is your first school name?</asp:ListItem>
                              <asp:ListItem>Who is your favorite teacher during graduation?</asp:ListItem>
                        </asp:DropDownList>
                      </td>
                  </tr>

                <tr>
                    <td>Answer</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                   <tr>
                      <td></td>
                       <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Recover" /></td>
                   </tr>
            </table>

            <br /><hr /><br />
            <a href="Default.aspx">Home</a>
            </center>
        </div>
    </form>
</body>
</html>
