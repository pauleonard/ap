<%@ page language=c# %>
<%@ register tagprefix=aspfd tagname=header src=header.ascx %>
<%@ register tagprefix=aspfd tagname=footer src=footer.ascx %>
<html>
<head>
<title>Chris' Big Birthday Shindig</title>
<link rel=stylesheet type=text/css href=main.css>
</head>
<body>
    <aspfd:header runat="server"/>
    <form id="form1" runat="server">
<h2>Chris' Big Birthday Shindig</h2>

        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="InvitesID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="InvitesID" HeaderText="InvitesID" ReadOnly="True" SortExpression="InvitesID" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Attendees" HeaderText="Attendees" SortExpression="Attendees" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pauldleonardConnectionString1 %>" DeleteCommand="DELETE FROM [Invites] WHERE [InvitesID] = @InvitesID" InsertCommand="INSERT INTO [Invites] ([FName], [LName], [Email], [Phone], [Attendees]) VALUES (@FName, @LName, @Email, @Phone, @Attendees)" ProviderName="<%$ ConnectionStrings:pauldleonardConnectionString1.ProviderName %>" SelectCommand="SELECT [InvitesID], [FName], [LName], [Email], [Phone], [Attendees] FROM [Invites]" UpdateCommand="UPDATE [Invites] SET [FName] = @FName, [LName] = @LName, [Email] = @Email, [Phone] = @Phone, [Attendees] = @Attendees WHERE [InvitesID] = @InvitesID">
            <DeleteParameters>
                <asp:Parameter Name="InvitesID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Attendees" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Attendees" Type="Int32" />
                <asp:Parameter Name="InvitesID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        
    </form>
    <aspfd:footer runat="server"/>
</body>
</html>