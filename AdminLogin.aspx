<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Admin <span>Login Info</span></h2>
    <p>&nbsp;</p>

<table width="70%" height="200px">
				<tr>
					<td>UserName</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtuname" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="Enter user name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                            runat="server" ControlToValidate="txtuname" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Enter password" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                            runat="server" ControlToValidate="txtpwd" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,15}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                            onclick="btnlogin_Click" />
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
                <tr>
					<td style="width: 140px">&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterAdmin.aspx">Click To Register</asp:HyperLink>
                    </td>
				</tr>
   <%--             <tr>
                    <td style="width: 140px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLinkForgotPassword" runat="server" NavigateUrl="~/AdminForgotPassword.aspx">Forgot Password?</asp:HyperLink>
                    </td>
                </tr>--%>
			</table>
            
</asp:Content>
