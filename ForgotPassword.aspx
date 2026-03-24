<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Forgot Password</h3>
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
    <br />
    Enter your registered Email:
    <asp:TextBox ID="txtEmail" runat="server" />
    <asp:Button ID="btnSendOTP" runat="server" Text="Send OTP" OnClick="btnSendOTP_Click" />
    <br /><br />
    Enter OTP:
    <asp:TextBox ID="txtOTP" runat="server" />
    <asp:Button ID="btnVerify" runat="server" Text="Verify OTP" OnClick="btnVerify_Click" />
</asp:Content>

