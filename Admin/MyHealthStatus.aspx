<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MyHealthStatus.aspx.cs" Inherits="Member_MyHealthStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>View <span>Health Status</span></h2>

<table width="80%" >
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td>Your Height in Inches</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtheight" runat="server" CssClass="txt" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
                <tr>
					<td>Your Weight in KG</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtweightkg" runat="server" CssClass="txt" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
				<tr>
					<td colspan="3" style="text-align: center">
                        <asp:Button ID="btnshow" runat="server" CssClass="btn" Enabled="False" 
                            Width="300px" />
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        &nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        &nbsp;</td>
				</tr>
                <tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        &nbsp;</td>
				</tr>
				</table>
            
</asp:Content>








