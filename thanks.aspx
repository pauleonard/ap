<%
   
' Dim variables
Dim oConn
Dim oRS
Dim strSQL
Dim strCon
Dim strDB
Dim strUser
Dim strPW
Dim strServer
Dim strFName
Dim strLName
Dim strEmail
Dim strPhone
Dim intPeeps

' Populate variables
strServer = "pauldleonard.db.12215306.hostedresource.com"
strDB = "pauldleonard"
strUser = "pauldleonard"
strPW = "Jere2911!"
   
strFName = Request.QueryString("FName")
strLName = Request.QueryString("LName")
strEmail = Request.QueryString("Email")
strPhone = Request.QueryString("Phone")
intPeeps = Request.QueryString("Peeps")

strCon = "Driver={SQL Server};SERVER=" & strServer & ";DATABASE=" & strDB & ";UID=" & strUser & ";PWD=" & strPW
   
oConn = Server.CreateObject("ADODB.Connection")
   

 
%>