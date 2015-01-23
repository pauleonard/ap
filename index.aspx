<%@ page language=vb debug=true %>
<%@ register tagprefix=aspfd tagname=header src=header.ascx %>
<%@ register tagprefix=aspfd tagname=footer src=footer.ascx %>
<%
'  Declare Variables
Dim strPerson as String
Dim strQuestion as String
Dim strFName as String
Dim strLName as String
Dim strEmail as String
Dim strPhone as String
Dim intPeeps as Integer

' Populate Variables
If Request.QueryString("FName") > "" Then
    strPerson = Request.QueryString("FName")
    strQuestion = "Is your info correct?"
    strFName = Request.QueryString("FName")
    strLName = Request.QueryString("LName")
    strEmail = Request.QueryString("Email")
    strPhone = Request.QueryString("Phone")
    intPeeps = Request.QueryString("Peeps")
Else
    strQuestion = "Can you answer these questions?"
    strPerson = "you"
End If
%>
<html>
<body>
<head>
<link rel=stylesheet type=text/css href=main.css>
</head>
<aspfd:header runat="server"/>
<h2>Chris' Big Birthday Shindig</h2>
<form action=Thanks.aspx>   
<p>Hey <%=strPerson%>! Are you coming or what?<br>
<input type=radio name=Invite checked>Yes, I'm coming!</input>
<input type=radio name=Invite>Defintely maybe.
<input type=radio name=Invite>Sorry, can't come.</input><br><br>
<%=strQuestion%>
<div>
    <span class=lcolumn>First Name</span><span class=rcolumn><input type=text name=FName value='<%=strFName%>'></span>
</div>
<div>
    <span class=lcolumn>Last Name</span><span class=rcolumn><input type=text name=LName value='<%=strLName%>'></span>
</div>    
<div>
    <span class=lcolumn>Email</span><span class=rcolumn><input type=text name=Email value='<%=strEmail%>'></span>
</div>
<div>
    <span class=lcolumn>Phone</span><span class=rcolumn><input type=text name=Phone value='<%=strPhone%>'></span>
</div>
<div>
    <span class=lcolumn>How many people are you bringing?</span><span class=rcolumn><input type=text name=Peeps value='<%=intPeeps%>'></span>
</div>
<div>
    <span class=rcolumn><input type=submit></span>
</div>
</form>
</p>
<aspfd:footer runat="server"/>
</body>
</html>