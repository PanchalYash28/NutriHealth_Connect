<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>


<h3>Reset Your Password</h3>
Email: <asp:Label ID="lblEmail" runat="server" />
<br /><br />
New Password: <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" />
<br />
Confirm Password: <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" />
<br />
<asp:Button ID="btnReset" runat="server" Text="Reset Password" OnClick="btnReset_Click" />
<br />
<asp:Label ID="lblStatus" runat="server" ForeColor="Red" />
