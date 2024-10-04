<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="SendingEmail.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
        }
        .auto-style2 {
            width: 259px;
        }
        .auto-style5 {
            width: 259px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 145px;
        }
        .auto-style8 {
            width: 145px;
            height: 23px;
        }
        .auto-style9 {
            width: 798px;
        }
        .auto-style10 {
            height: 23px;
            width: 798px;
        }
        .auto-style11 {
            width: 502px;
        }
        .auto-style12 {
            width: 502px;
            height: 23px;
        }
        .auto-style13 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">Sender</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Sender" runat="server" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Sender" CssClass="auto-style13" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Sender" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">Port Number</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="PortNumber" runat="server" Height="16px" Width="140px">
                            <asp:ListItem>587</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Sender Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="SenderPassword" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SenderPassword" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">SMTP Name</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="SMTP_Name" runat="server" Height="16px" Width="140px">
                            <asp:ListItem>smtp.gmail.com</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Receiver</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Reciver" runat="server" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Reciver" CssClass="auto-style13" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style7">Attachment</td>
                    <td class="auto-style9">
                        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Subject</td>
                    <td class="auto-style6" colspan="3">
                        <asp:TextBox ID="Subject" runat="server" Height="16px" Width="490px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Body</td>
                    <td class="auto-style6" colspan="3">
                        <asp:TextBox ID="Body" runat="server" Height="128px" TextMode="MultiLine" Width="490px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style5">
                        <asp:Button ID="Send" runat="server" Text="Send" Height="29px" OnClick="Send_Click" Width="55px" />
                        <asp:Label ID="msg" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
