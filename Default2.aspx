<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ register tagprefix=aspfd tagname=header src=header.ascx %>
<%@ register tagprefix=aspfd tagname=footer src=footer.ascx %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<head>
<title>Chris' Big Birthday Shindig</title>
<link rel=stylesheet type=text/css href=main.css>
</head>
<aspfd:header runat="server"/>
<h2>Chris' Big Birthday Shindig</h2>
<form>   
<p>Hey console.writeline(strPerson);! Are you coming or what?<br>
<input type=radio name=Invite value=Yes if (strInvite = "Yes") { console.writeline("checked"); }>Yes, I'm coming!</input><br>
<input type=radio name=Invite value=Maybe if (strInvite = "Maybe") { console.writeline("checked"); }>Defintely maybe.</input><br>
<input type=radio name=Invite value=No if (strInvite = "No") { console.writeline("checked"); }>Sorry, can't come.</input><br><br>
<table>
    <tr>
        <td colspan="2">console.writeline(strQuestion); (All fields required)</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td><input type=text name=FName value='console.writeline(strFName)'></td>
    <tr>
        <td>Last Name</td>
        <td><input type=text name=LName value='console.writeline(strLName)'></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><input type=text name=Email value='console.writeline(strEmail)'></td>
    </tr>
    <tr>
        <td>Phone</td>
        <td><input type=text name=Phone value='console.writeline(strPhone)'></td>
    </tr>
    <tr>
        <td colspan=2>How many people are you bringing?</td>
    </tr>
    <tr>
        <td></td>
        <td><select name=peeps>
                <option value=1 if (intPeeps = 1) { console.writeline("Selected"); }>1</option>
                <option value=2 if (intPeeps = 2) { console.writeline("Selected"); }>2</option>
                <option value=3 if (intPeeps = 3) { console.writeline("Selected"); }>3</option>
                <option value=4 if (intPeeps = 4) { console.writeline("Selected"); }>4</option>
                <option value=5 if (intPeeps = 5) { console.writeline("Selected"); }>5</option>
            </select></td>
    </tr>
    <tr>
        <td></td>
        <td align=right><br><input type=Submit></td>
    </tr>
</table>
</form>
</p>
<aspfd:footer runat="server"/>
</body>
</html>
