using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strPerson;
        string strQuestion;
        string strMessage;
        string strInvite = Request.QueryString["Invite"];
        string strFName = Request.QueryString["FName"];
        string strLName = Request.QueryString["LName"];
        string strEmail = Request.QueryString["Email"];
        string strPhone = Request.QueryString["Phone"];
        string strPeeps = Request.QueryString["Peeps"];

// Populate form with email
if (strInvite = "")
{
    strPerson = Request.QueryString["FName"];
    strQuestion = "Is your info correct?";
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
    
        strMessage = "Chris,<br><br>" +
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
    }
}