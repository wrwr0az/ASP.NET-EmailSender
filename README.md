# Email Sender Web Application Using ASP.NET Framework

This is a simple ASP.NET web application for sending emails to multiple recipients with support for file attachments. Users can send emails through different SMTP servers by providing credentials, selecting a port number, and optionally attaching multiple files.

## Features

- Send emails to multiple recipients (comma-separated email addresses).
- Attach multiple files to the email.
- Configurable SMTP server and port.
- User authentication via email and password for sending.
- Validation for email addresses.

## Setup Instructions

### Prerequisites

- .NET Framework 4.8 or higher.
- Visual Studio or any IDE supporting ASP.NET Web Forms.
- SMTP access (e.g., Gmail SMTP, Outlook SMTP).

### How to Run

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/EmailSenderApp.git
    ```

2. Open the solution in Visual Studio.

3. Update the `Web.config` if needed for any custom settings (optional).

4. Build and run the application.

5. Navigate to the email sender form, fill in the details, and send the email.

### How to Use

1. **Sender Email**: Enter the email address from which you want to send the email.
2. **Sender Password**: Provide the password for the sender's email account.
3. **Receiver**: Enter one or more email addresses (comma-separated) to which you want to send the email.
4. **Subject**: Specify the subject of the email.
5. **Body**: Write the content of the email message.
6. **Attachments**: (Optional) You can upload and attach multiple files to your email.
7. **SMTP Name**: Select the SMTP server (e.g., `smtp.gmail.com` for Gmail).
8. **Port Number**: Enter the port number for the selected SMTP (e.g., 587 for Gmail).

Click **Send** to send the email.

### Example Configuration

For Gmail SMTP:

- **SMTP Name**: `smtp.gmail.com`
- **Port Number**: `587`
- **Enable SSL**: True (SSL is enabled in the code by default)

### Technologies Used

- ASP.NET Web Forms
- C#
- SMTP Client for email transmission
- HTML5, CSS for the frontend

### Error Handling

The application handles errors that may occur during email sending, such as invalid email addresses, authentication failures, or attachment issues. In case of an error, an appropriate message will be displayed on the web page.


