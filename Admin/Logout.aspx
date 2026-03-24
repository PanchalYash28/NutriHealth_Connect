<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Admin_Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Admin <span>Logout</span></h2>
    <p>&nbsp;</p>

<table width="70%" height="200px">
				<tr>
					<td>
                        Want to logout? Are you Sure</td>
				</tr>
				<tr>
					<td>
                        <asp:Button ID="btnlogout" runat="server" CssClass="btn" Text="Log out" 
                            onclick="btnlogout_Click" Font-Size="16pt" Height="40px" />
                    </td>
				</tr>
				<tr>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td>
                        &nbsp;</td>
				</tr>
			</table>
            
</asp:Content>


