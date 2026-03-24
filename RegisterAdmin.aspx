<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="RegisterAdmin.aspx.cs" Inherits="RegisterAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Admin <span>Registration Info</span></h2>
    <p>&nbsp;</p>

<table width="70%">
				<tr>
					<td style="width: 140px">Admin Id</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtAdminid" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">User Name</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtuname" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="Enter user name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                            runat="server" ControlToValidate="txtuname" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,20}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Enter Password</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Enter password" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                            runat="server" ControlToValidate="txtpwd" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,15}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Reenter Password</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtrpwd" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtrpwd" Display="Dynamic" ErrorMessage="Reenter password" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpwd" ControlToValidate="txtrpwd" Display="Dynamic" 
                            ErrorMessage="Passwords should match" Font-Size="10pt" ForeColor="Red"></asp:CompareValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                            runat="server" ControlToValidate="txtrpwd" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,15}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
				<tr>
					<td style="width: 140px">&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnregister" runat="server" CssClass="btn" Text="Register" 
                            onclick="btnregister_Click" />
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>




