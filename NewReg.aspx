<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewReg.aspx.cs" Inherits="NewReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/bootstrap-4.0.0-dist/js/bootstrap.js"></script>
     <script src="bootstrap/bootstrap-4.0.0-dist/js/jquery.min.js"></script>
    <title></title>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" href="body.css" />
        <div>
            <center>
            <br /><br />
            
            <h2>Registration Form</h2>
               <br /><hr /> <br />
               <table>
                  <tr>
                     <td>UserID</td>
                     <td>
                        <asp:TextBox ID="TextBox1" runat="server" autocomplete="off"></asp:TextBox>

                     </td>
                   </tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" autocomplete="off" TextMode="Password"></asp:TextBox>
                       </td>
                </tr>

                  <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                   <td>Age</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" autocomplete="off"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gen" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gen" Checked="true" />      
                    </td>
                </tr>
                  <tr>
                    <td>Mobile</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" autocomplete="off"></asp:TextBox></td>
                   </tr>
                   <tr>
                    <td>Email Address</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" autocomplete="off"></asp:TextBox></td>
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
                        <asp:TextBox ID="TextBox7" runat="server" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="submit" /></td>
                </tr>
              </table>
                 <br />
                <hr />
                <br />
                &copy;Rommer's Familly Pvt.Ltd<br />
                 Developed in Microsoft ASP.NET
                 <center>
        </div>
    </form>
</body>
</html>
