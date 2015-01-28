<%@ Page Language="C#" %>
<%@ register tagprefix=aspfd tagname=header src=header.ascx %>
<%@ register tagprefix=aspfd tagname=footer src=footer.ascx %>
<script runat="server">
// Variables

string strPerson;
string strInvite = Request.QueryString("Invite");
string strFName = Request.QueryString("FName");
string strLName = Request.QueryString("LName");
string strEmail = Request.QueryString("Email");
string strPhone = Request.QueryString("Phone");
int intPeeps = Request.QueryString("Peeps");

// Populate form with email
if (strInvite = "")
{
    string strPerson = Request.QueryString("FName");
    string strQuestion = "Is your info correct?";
}

// Form validation, write to database, send email, redirect to thanks.aspx
else if (strInvite > "")
{
    if (strName = "" || strEmail = "" || strPhone = "")
    {
        strQuestion = "Please provide all info.";
    }
    
    // Populate database, send email, redirect to thanks
    else
    
    
        //Dim SMTPserver As New SmtpClient
        //Dim message As New MailMessage()
          
        //SMTPserver.UseDefaultCredentials = False
        //SMTPserver.Credentials = New Net.NetworkCredential("email@gmail.com", "password")
        //SMTPserver.Port = 587
        //SMTPserver.EnableSsl = True
        //SMTPserver.Host = "smtp.gmail.com"

        //message = New MailMessage()
        //message.From = New MailAddress("pauleonard@gmail.com")
        //message.To.Add("pauleonard@gmail.com)
        //message.Subject = "Guess who's coming to your party!"
        //message.IsBodyHtml = True
    
        string strMessage = "Chris,<br><br>" +
                        "Your friend " + strFName + " " + strLName + " is ";
    
        if (strInvite = "Maybe")
        {
            
            strMessage = strMessage + "maybe ";
        }

        if (strInvite = "Maybe" || strInvite = "Yes")
        {
            streMessage = strMessage + "coming to your birthday party and bringing " + intPeeps + " people! If you need to contact them, their email address " +
                                        "is " + strEmail + " and phone number is " + strPhone + ".<br><br>";
        }
        else
        {
            strMessage = strMessage + "not coming to your birthday party. Sorry.<BR><BR>";
        }

        strMessage = strMessage + "If you would like to see who is coming to your party, follow this link:<BR>" +
                                    "<a href=http://www.pauldleonard.com/ap/admin.aspx>http://www.pauldleonard.com/ap/admin.aspx</a><BR><br>" +
                                    "Have a great day!<br><br>";
    
        console.writeline(strMessage);    
        Response.End;
        
        //message.Body = strEmail;
    
        //SMTPserver.Send(message);
    
        Response.Redirect("Thanks.aspx");
    }   
    
// User enters site with no data
else
{
    string strQuestion = "Please provide your info:";
    string strPerson = "you";
}
</script>
<html>
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