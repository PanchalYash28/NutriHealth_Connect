<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddAssestmentRecord.aspx.cs" Inherits="Admin_AddAssestmentRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add <span>Assestment Record Info</span></h2>
<p>&nbsp;</p>

<table>
				<tr>
					<td>Assestment Record Id</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtARid" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Patient Name</td>
					<td>:</td>
					<td colspan="2">
                        <asp:DropDownList ID="ddlPid" runat="server" CssClass="input" 
                            Height="24px" Width="201px" DataSourceID="SqlDataSource1" 
                            DataTextField="firstname" DataValueField="memberid">
                            <asp:ListItem>Choose</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlPid" Display="Dynamic" ErrorMessage="Choose patient name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="Choose"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [memberid], [firstname] FROM [Member]">
                        </asp:SqlDataSource>
                        <br />
                    </td>
				</tr>
                 <tr>
					<td>current Calories</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtCcal" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtCcal" Display="Dynamic" ErrorMessage="Enter current calories" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td>Allergies (if any)</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtAllergy" runat="server" CssClass="input" Height="50px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtAllergy" Display="Dynamic" ErrorMessage="Enter allergies" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Diesease (if any)</td>
					<td>&nbsp;</td>
					<td colspan="2">
                        <asp:DropDownList ID="ddlDisease" runat="server" CssClass="input" Height="24px" 
                            Width="201px" DataSourceID="SqlDataSource2" DataTextField="dname" 
                            DataValueField="did">
                            <asp:ListItem>Choose</asp:ListItem>
                            <asp:ListItem>None</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="ddlDisease" Display="Dynamic" ErrorMessage="Choose diesease" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="Choose"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [did], [dname] FROM [Diseases]"></asp:SqlDataSource>
                    </td>
				</tr>
                <tr>
					<td>Opertaion Performed (if any)</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtOperation" runat="server" CssClass="input" Height="50px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtOperation" Display="Dynamic" ErrorMessage="Enter operation performed" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>History of Present illness</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtPresentHistory" runat="server" CssClass="input" Height="50px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtPresentHistory" Display="Dynamic" ErrorMessage="Enter history of present illness" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Family History of illness</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtFamilyHistory" runat="server" CssClass="input" Height="50px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtFamilyHistory" Display="Dynamic" ErrorMessage="Enter family history" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Main Complaint</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtMainComplaint" runat="server" CssClass="input" Height="50px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtMainComplaint" Display="Dynamic" ErrorMessage="Enter main complaint" 
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
				<tr>
					<td align="center" colspan="2">
                        &nbsp;</td>
					<td colspan="2">
                        &nbsp;</td>
				</tr>
				</table>
            
</asp:Content>



