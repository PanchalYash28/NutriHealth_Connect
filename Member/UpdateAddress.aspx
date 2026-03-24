<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="UpdateAddress.aspx.cs" Inherits="Member_UpdateAddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Update <span>Address Info</span></h2>
    <p>&nbsp;</p>

<table width="80%" >
				<tr>
					<td>Member Id</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtMemberid" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtfname" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
                <tr>
					<td>Last Name</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtlname" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
                 <tr>
					<td>Address</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="input" Height="55px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="Enter address" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                 <tr>
					<td>City</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="Enter city" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtcity" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td>State</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtstate" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtstate" Display="Dynamic" ErrorMessage="Enter state" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtstate" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td>Pincode</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtpin" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Enter pincode" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Enter 6 digits only" 
                            Font-Size="10pt" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td>Email ID</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter email id" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="txtemail" Display="Dynamic" 
                            ErrorMessage="Enter legal email id" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td>Contact No.</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtcontact" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtcontact" Display="Dynamic" 
                            ErrorMessage="Enter contact no." Font-Bold="False" Font-Size="10pt" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="txtcontact" Display="Dynamic" 
                            ErrorMessage="Enter number in  format is  00000-00000" Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="\d{5}(-)\d{5}"></asp:RegularExpressionValidator>
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnupdate" runat="server" CssClass="btn" Text="Update" 
                            onclick="btnupdate_Click" />
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>




