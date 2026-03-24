<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Member_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Change <span>Password</span></h2>
    <p>&nbsp;</p>

<table width="90%">
				 <tr>
					<td style="width: 167px">Enter Old Password</td>
					<td>&nbsp;</td>
					<td>
                        <asp:TextBox ID="txtopwd" runat="server" CssClass="input" TextMode="Password" 
                            AutoPostBack="True" ontextchanged="txtopwd_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="txtopwd" Display="Dynamic" ErrorMessage="Enter old password" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				 <tr>
					<td style="width: 167px">Enter New Password</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtpwd" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Enter new password" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                            runat="server" ControlToValidate="txtpwd" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,15}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 167px">Reenter New Password</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtrpwd" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                            ControlToValidate="txtrpwd" Display="Dynamic" ErrorMessage="Reenter new password" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpwd" ControlToValidate="txtrpwd" Display="Dynamic" 
                            ErrorMessage="Passwords should match" Font-Size="10pt" ForeColor="Red"></asp:CompareValidator>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                            runat="server" ControlToValidate="txtrpwd" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets, digits and _ " Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'_']{5,15}$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
				<tr>
					<td style="width: 167px">&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnchange" runat="server" CssClass="btn" Text="Change" 
                            onclick="btnchange_Click" />
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>



