using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SendingEmail
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            string SenderEmail = Sender.Text.ToString();
            string SenderPass = SenderPassword.Text.ToString();
            string[] receiversEmails;
            string emailSubject = Subject.Text.ToString();
            string emailBody = Body.Text.ToString();
            string fileName;

            SmtpClient client = new SmtpClient(SMTP_Name.SelectedValue.ToString(), Convert.ToInt32(PortNumber.SelectedValue));
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential(SenderEmail, SenderPass);

            try
            {
                // Create MailMessage
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress(SenderEmail);

                // Add multiple recivers (comma-separated)
                receiversEmails = Reciver.Text.Split(',');
                foreach (string email in receiversEmails)
                {
                    if (!string.IsNullOrWhiteSpace(email))
                    {
                        mailMessage.To.Add(new MailAddress(email.Trim()));
                    }
                }

                // Set subject and body
                mailMessage.Subject = emailSubject;
                mailMessage.Body = emailBody;

                // Attach file if one is uploaded
                if (FileUpload1.HasFiles)
                {
                    foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                    {
                        if (file != null && file.ContentLength > 0)
                        {
                            fileName = file.FileName;
                            Attachment attachment = new Attachment(file.InputStream, fileName);
                            mailMessage.Attachments.Add(attachment);
                        }
                    }
                }

                // Send email
                client.Send(mailMessage);
                msg.Text = "Email has been sent";
            }
            catch (Exception ex)
            {
                msg.Text = "Error: " + ex.Message;
            }
        }
    }
}
