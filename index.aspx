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
<h2>Chris' Big Birthday Shindig</h2>
<p>Hey <%=strPerson%>! Are you coming or what?
    <form action=Thanks.aspx>
    <input type=radio name=Invite checked>Yes, I'm coming!</input>
    <input type=radio name=Invite>Defintely maybe.
    <input type=radio name=Invite>Sorry, I can't come.</input><br><br>
    <%=strQuestion%><br><br>
    First Name <input type=text name=FName value='<%=strFName%>'><br>
    Last Name <input type=text name=LName value='<%=strLName%>'><br>
    Email <input type=text name=Email value='<%=strEmail%>'><br>
    Phone <input type=text name=Phone value='<%=strPhone%>'><br>
    How many people are you bringing? <input type=text name=Peeps value='<%=intPeeps%>'><br>
    <input type=submit>
    </form>
    </p>
</body>
</html>