using System;
using System.Net.Mail;

namespace Crochet_Web
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // You can implement your logic to handle the submission here, like sending an email.
            SendEmail(fullName, email, message);

            // Optionally, you can redirect the user to a thank you page or show a success message.
            Response.Redirect("ThankYou.aspx");
        }

        private void SendEmail(string fullName, string email, string message)
        {
            // Configure and send email here
            // For demonstration purposes, a basic example is shown below
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("your_email@example.com");
            mail.To.Add("your_email@example.com");
            mail.Subject = "Contact Form Submission";
            mail.Body = $"Full Name: {fullName}<br />Email: {email}<br />Message: {message}";
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.example.com");
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("your_email@example.com", "your_password");
            smtp.EnableSsl = true;

            smtp.Send(mail);
        }
    }
}