<%@ page language=vb debug=true %>
<%@ register tagprefix=aspfd tagname=header src=header.ascx %>
<%@ register tagprefix=aspfd tagname=footer src=footer.ascx %>
<%
'  Declare Variables
Dim strPerson as String
Dim strQuestion as String
Dim strInvite as String
Dim strFName as String
Dim strLName as String
Dim strEmail as String
Dim strPhone as String
Dim intPeeps as Integer
 
' Populate variables
strInvite = Request.QueryString("Invite")
strFName = Request.QueryString("FName")
strLName = Request.QueryString("LName")
strEmail = Request.QueryString("Email")
strPhone = Request.QueryString("Phone")
intPeeps = Request.QueryString("Peeps")

' Email Population Form
If strInvite = "" Then
    strPerson = Request.QueryString("FName")
    strQuestion = "Is your info correct?"
    
' Form Validation
ElseIf strInvite > "" Then
    If strLName = "" or strEmail = "" or strPhone = "" Then
        strQuestion = "Please provide all info."
    
        Response.End
    
    ' Populate database, send email, redirect to thanks
    Else
        'Dim SMTPserver As New SmtpClient
        'Dim message As New MailMessage()
        Dim strMessage as String
          
        'SMTPserver.UseDefaultCredentials = False
        'SMTPserver.Credentials = New Net.NetworkCredential("pauleonard@gmail.com", "Jere2912")
        'SMTPserver.Port = 587
        'SMTPserver.EnableSsl = True
        'SMTPserver.Host = "smtp.gmail.com"

        'message = New MailMessage()
        'message.From = New MailAddress("pauleonard@gmail.com")
        'message.To.Add("pauleonard@gmail.com)
        'message.Subject = "Guess who's coming to your party!"
        'message.IsBodyHtml = True
    
        strMessage = strMessage & "Chris,<br><br>"
        strMessage = strMessage & "Your friend " & strFName & " " & strLName & " is "
    
        If strInvite = "Maybe" Then
            strMessage = strMessage & "maybe "
        End If
    
        If strInvite = "Maybe" or strInvite = "Yes" Then
            strMessage = strMessage & "coming to your birthday party and bringing " & intPeeps & " people! If you need to contact them, their email address is "
            strMessage = strMessage & strEmail & " and phone number is " & strPhone & ".<br><br>"
        Else
            strMessage = strMessage & "not coming to your birthday party. Sorry.<BR><BR>"
        End If

        strMessage = strMessage & "Have a great day!<br><br>"
    
        Response.Write(strMessage)
        Response.End
        
        'message.Body = strEmail
    
        'SMTPserver.Send(message)
    
        Response.Redirect("Thanks.aspx")
    End If   
    
' User enters site with no data
Else
    strQuestion = "Please provide your info:"
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
<form>   
<p>Hey <%=strPerson%>! Are you coming or what?<br>
<input type=radio name=Invite value=Yes <%If strInvite = "Yes" Then%>checked<%End If%>>Yes, I'm coming!</input><br>
<input type=radio name=Invite value=Maybe <%If strInvite = "Maybe" Then%>checked<%End If%>>Defintely maybe.</input><br>
<input type=radio name=Invite value=No <%If strInvite = "No" Then%>checked<%End If%>>Sorry, can't come.</input><br><br>
<table>
    <tr>
        <td colspan="2"><%=strQuestion%> (All fields required)</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td><input type=text name=FName value='<%=strFName%>'></td>
    <tr>
        <td>Last Name</td>
        <td><input type=text name=LName value='<%=strLName%>'></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><input type=text name=Email value='<%=strEmail%>'></td>
    </tr>
    <tr>
        <td>Phone</td>
        <td><input type=text name=Phone value='<%=strPhone%>'></td>
    </tr>
    <tr>
        <td colspan=2>How many people are you bringing?</td>
    </tr>
    <tr>
        <td></td>
        <td><select name=peeps>
                <option value=1 <%If intPeeps = 1 Then%>Selected<%End If%>>1</option>
                <option value=2 <%If intPeeps = 2 Then%>Selected<%End If%>>2</option>
                <option value=3 <%If intPeeps = 3 Then%>Selected<%End If%>>3</option>
                <option value=4 <%If intPeeps = 4 Then%>Selected<%End If%>>4</option>
                <option value=5 <%If intPeeps = 5 Then%>Selected<%End If%>>5</option>
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