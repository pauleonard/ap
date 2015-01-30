using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.FName.Text = Request.QueryString.Get("FName");
        this.LName.Text = Request.QueryString.Get("LName");
        this.Email.Text = Request.QueryString.Get("Email");
        this.Attendees.Text = Request.QueryString.Get("Attendees");

        if (IsPostBack)
        {
            // Popluate form variables
            string strFName = Request.Form.Get("FName");
            string strLName = Request.Form.Get("LName");
            string strEmail = Request.Form.Get("Email");
            string strPhone = Request.Form.Get("Phone");
            string strAttendees = Request.Form.Get("Attendees");
            string strInvite = Request.Form.Get("Invite");
            string strSQL;

            // Connect to DB and insert new data
            SqlConnection con = new SqlConnection("Data Source=pauldleonard.db.12215306.hostedresource.com;Initial Catalog=pauldleonard;Persist Security Info=True;User ID=pauldleonard;Password=Jere2911!");

            con.Open();

            strSQL = "Insert into Invites " +
                        "(FName, LName, Email, Phone, Attendees) " +
                        "Values ('" + strFName + "','" + strLName + "','" + strEmail + "','" + strPhone + "','" + strAttendees + "')";

            SqlCommand cmd = new SqlCommand(strSQL, con);

            cmd.ExecuteNonQuery();

            con.Close();

            // Send email
            string strMessage;

            strMessage = "Chris," +
                            "Your friend " + strFName + " " + strLName + " just responded to your party invitation. " +
                            "They said " + strInvite + ".<BR><BR>" +
                            "If you would like to see who else responded to your invite click here:<BR>" +
                            "<a href='http://wwww.pauldleonard.com/ap/admin.aspx'>" +
                            "http://www.pauldleonard.com/ap/admin.aspx</a><br><br>" +
                            "Have a great day!";

            SmtpClient client = new SmtpClient();

            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("pauleonard@gmail.com", "password");

            MailMessage mm = new MailMessage("donotreply@domain.com", "pauleonard@gmail.com", "Subject", "Body");
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

            //client.Send(mm);

            Response.Redirect("thanks.aspx");
        }
    }
}