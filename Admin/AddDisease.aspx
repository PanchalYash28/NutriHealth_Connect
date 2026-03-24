<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddDisease.aspx.cs" Inherits="Admin_AddDisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add <span>Disease Info</span></h2>
<p>&nbsp;</p>

<table>
				<tr>
					<td>Disease Id</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtDiseaseid" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Disease Name</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtdname" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtdname" Display="Dynamic" ErrorMessage="Enter disease name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
                 <tr>
					<td>Disease Description</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtdesc" runat="server" CssClass="input" Height="50px" 
                            Rows="5" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtdesc" Display="Dynamic" ErrorMessage="Enter disease description" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="Add" 
                            onclick="btnadd_Click" />
                    </td>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
                        &nbsp;</td>
					<td colspan="2">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>



