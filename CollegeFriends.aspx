<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CollegeFriends.aspx.cs" Inherits="CollegeFriends" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 16px;
        }
        .container a{
            text-decoration:none;
        }
        
     </style>
</head>
<body>
    <link rel="stylesheet" href="body.css" />
    <form id="form1" runat="server">
        <div class="container">
            <center><br />
                <h2>Friends From College</h2><br />
                <hr /><br />
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="fid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="auto-style1" Height="70px" Width="953px">
                   <AlternatingRowStyle BackColor="#CCCCCC" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
                       <asp:BoundField DataField="userid" HeaderText="UseriID" SortExpression="userid" />
                       <asp:BoundField DataField="fid" HeaderText="Friend ID" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                       <asp:BoundField DataField="Fnm" HeaderText="Name" SortExpression="Fnm" />
                       <asp:BoundField DataField="fmono" HeaderText="Mobile" SortExpression="fmono" />
                       <asp:BoundField DataField="faddress" HeaderText="Address" SortExpression="faddress" />
                       <asp:BoundField DataField="ftyp" HeaderText="Friend from" SortExpression="ftyp" />
                   </Columns>
                   <FooterStyle BackColor="#CCCCCC" />
                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                   <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="#808080" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CollegeProjectConnectionString14 %>" DeleteCommand="DELETE FROM [friends] WHERE [fid] = @original_fid AND (([userid] = @original_userid) OR ([userid] IS NULL AND @original_userid IS NULL)) AND (([Fnm] = @original_Fnm) OR ([Fnm] IS NULL AND @original_Fnm IS NULL)) AND (([fmono] = @original_fmono) OR ([fmono] IS NULL AND @original_fmono IS NULL)) AND (([faddress] = @original_faddress) OR ([faddress] IS NULL AND @original_faddress IS NULL)) AND (([ftyp] = @original_ftyp) OR ([ftyp] IS NULL AND @original_ftyp IS NULL))" InsertCommand="INSERT INTO [friends] ([userid], [Fnm], [fmono], [faddress], [ftyp]) VALUES (@userid, @Fnm, @fmono, @faddress, @ftyp)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [userid], [fid], [Fnm], [fmono], [faddress], [ftyp] FROM [friends] WHERE (([userid] = @userid) AND ([ftyp] = @ftyp))" UpdateCommand="UPDATE [friends] SET [userid] = @userid, [Fnm] = @Fnm, [fmono] = @fmono, [faddress] = @faddress, [ftyp] = @ftyp WHERE [fid] = @original_fid AND (([userid] = @original_userid) OR ([userid] IS NULL AND @original_userid IS NULL)) AND (([Fnm] = @original_Fnm) OR ([Fnm] IS NULL AND @original_Fnm IS NULL)) AND (([fmono] = @original_fmono) OR ([fmono] IS NULL AND @original_fmono IS NULL)) AND (([faddress] = @original_faddress) OR ([faddress] IS NULL AND @original_faddress IS NULL)) AND (([ftyp] = @original_ftyp) OR ([ftyp] IS NULL AND @original_ftyp IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_fid" Type="Int32" />
                        <asp:Parameter Name="original_userid" Type="String" />
                        <asp:Parameter Name="original_Fnm" Type="String" />
                        <asp:Parameter Name="original_fmono" Type="String" />
                        <asp:Parameter Name="original_faddress" Type="String" />
                        <asp:Parameter Name="original_ftyp" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userid" Type="String" />
                        <asp:Parameter Name="Fnm" Type="String" />
                        <asp:Parameter Name="fmono" Type="String" />
                        <asp:Parameter Name="faddress" Type="String" />
                        <asp:Parameter Name="ftyp" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="na" Name="userid" SessionField="userid" Type="String" />
                        <asp:Parameter DefaultValue="College" Name="ftyp" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userid" Type="String" />
                        <asp:Parameter Name="Fnm" Type="String" />
                        <asp:Parameter Name="fmono" Type="String" />
                        <asp:Parameter Name="faddress" Type="String" />
                        <asp:Parameter Name="ftyp" Type="String" />
                        <asp:Parameter Name="original_fid" Type="Int32" />
                        <asp:Parameter Name="original_userid" Type="String" />
                        <asp:Parameter Name="original_Fnm" Type="String" />
                        <asp:Parameter Name="original_fmono" Type="String" />
                        <asp:Parameter Name="original_faddress" Type="String" />
                        <asp:Parameter Name="original_ftyp" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br /><hr />
                <br />
                <a href="ShowFriends.aspx">Back</a>
                <br />
               
            </center>
        </div>
    </form>
</body>
</html>
