<%@ Page aspcompat=true debug=true %>
<%

'Sample Database Connection Syntax for ASP and SQL Server.

Dim oConn, oRs
Dim qry, connectstr
Dim db_name, db_username, db_userpassword
Dim db_server
Dim strX as string
Dim fieldname as string
Dim tablename as string

db_server = "pauldleonard.db.12215306.hostedresource.com"
db_name = "pauldleonard"
db_username = "pauldleonard"
db_userpassword = "Jere2911!"
fieldname = "FName"
tablename = "Invites"

connectstr = "Driver={SQL Server};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword 
oConn = Server.CreateObject("ADODB.Connection")
oConn.Open(connectstr)

qry = "SELECT * FROM " & tablename

oRS = oConn.Execute(qry)

Do until oRs.EOF
   Response.write oRs.fields(fieldname)
 
   oRS.MoveNext
Loop
 
oRs.Close
 
oRs = nothing
oConn = nothing
 
response.write(strX)
%>