<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" Debug="true" %>
<%@ register tagprefix="aspfd" tagname="header" src="header.ascx" %>
<%@ register tagprefix="aspfd" tagname="footer" src="footer.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<aspfd:header runat="server"/>
<body>
    <form id="form" runat="server" >
    <table>
        <tr>
            <td colspan="3">
                Hey! Are you coming or what?<br />
                <asp:RadioButtonList ID="Invite" runat="server">
                    <asp:ListItem Value="Yes">Yes, I&#39;m coming!</asp:ListItem>
                    <asp:ListItem Value="Maybe">Definitely maybe.</asp:ListItem>
                    <asp:ListItem Value="No">Sorry, can&#39;t come.</asp:ListItem>
                </asp:RadioButtonList><br />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Please provide your info: (All fields required)
            </td>
        </tr>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="FName" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Required" ControlToValidate="FName">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="LName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LName" ErrorMessage="Last Name Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Email Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone" ErrorMessage="Phone Required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                How many people are you bringing?
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <asp:DropDownList ID="Attendees" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <asp:Button ID="Submit" runat="server" Text="Submit" /><br /><br />
            </td>
        </tr>
    </table>
    </form>
<aspfd:footer runat="server"/>
</body>
</html>
