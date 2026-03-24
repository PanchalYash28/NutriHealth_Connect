<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBMI.aspx.cs" Inherits="Admin_AddBMI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Add <span>BMI of Members</span></h2>

<table width="80%" >
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td>Todays Date</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txttdate" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Member Id</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtmid" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Your Height in Inches</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtheight" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
                <tr>
					<td>Your Weight in KG</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtweightkg" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" AutoPostBack="True" 
                            ontextchanged="txtweightkg_TextChanged"></asp:TextBox>
                        <br />
                    </td>
				</tr>
				<tr>
					<td>Health Status</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txthstatus" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnadd" runat="server" CssClass="btn" onclick="btnadd_Click" 
                            Text="Add BMI" />
                    </td>
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







