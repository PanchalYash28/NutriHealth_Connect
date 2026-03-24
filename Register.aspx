<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Member <span>Registration Info</span></h2>
    <p>&nbsp;</p>

<table width="70%" height="600px">
				<tr>
					<td style="width: 140px">Registration Date</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtMRDate" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td style="width: 140px">Member Id</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtMemberid" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td style="width: 140px">First Name</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtfname" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="Enter first name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtfname" Display="Dynamic" 
                            ErrorMessage="Enter only Alphabets" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                <tr>
					<td style="width: 140px">Last Name</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtlname" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Enter last name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                            runat="server" ControlToValidate="txtlname" Display="Dynamic" 
                            ErrorMessage="Enter only Alphabets" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Birthdate</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtbdate" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtbdate" Display="Dynamic" ErrorMessage="Enter birth date" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                            ControlToValidate="txtbdate" Display="Dynamic" 
                            ErrorMessage="Enter date in DD-MON-YYYY format" Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="\d{1,2}(-)\w{3}(-)\d{4}"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Age</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtage" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtage" Display="Dynamic" ErrorMessage="Enter age" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                            runat="server" ControlToValidate="txtage" Display="Dynamic" 
                            ErrorMessage="Enter digits only" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="\d{2,3}"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Gender</td>
					<td>:</td>
					<td>
                        <asp:RadioButton ID="rdm" runat="server" GroupName="gender" Text="Male" />
                        <asp:RadioButton ID="rdf" runat="server" GroupName="gender" Text="Female" />
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Address</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="input" Height="43px" 
                            Rows="5" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="Enter address" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">City</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="Enter city" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="txtcity" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">State</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtstate" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtstate" Display="Dynamic" ErrorMessage="Enter state" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtstate" Display="Dynamic" 
                            ErrorMessage="Enter only alphabets" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Pincode</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtpin" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Enter pincode" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="Enter 6 digits only" 
                            Font-Size="10pt" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Occupation</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtoccup" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtoccup" Display="Dynamic" ErrorMessage="Enter Occupation" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Email ID</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Enter email id" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="txtemail" Display="Dynamic" 
                            ErrorMessage="Enter legal email id" Font-Size="10pt" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Contact No.</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtcontact" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtcontact" Display="Dynamic" 
                            ErrorMessage="Enter contact no." Font-Bold="False" Font-Size="10pt" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="txtcontact" Display="Dynamic" 
                            ErrorMessage="Enter number in  format is  00000-00000" Font-Size="10pt" 
                            ForeColor="Red" ValidationExpression="\d{5}(-)\d{5}"></asp:RegularExpressionValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Weight</td>
					<td>:</td>
					<td>
                        <asp:TextBox ID="txtweight" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtweight" Display="Dynamic" ErrorMessage="Enter weight" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                 <tr>
					<td style="width: 140px">Height (Inches)</td>
					<td>:</td>
					<td>
                        <asp:DropDownList ID="ddlFoot" runat="server" CssClass="input" Width="100px">
                            <asp:ListItem Value="-1">Feet</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlInch" runat="server" CssClass="input" Width="100px">
                            <asp:ListItem Value="-1">Inch</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="ddlFoot" Display="Dynamic" ErrorMessage="Select foot" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                            ControlToValidate="ddlInch" Display="Dynamic" ErrorMessage="Select inch" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                        <br />
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
					<td style="width: 140px">Password</td>
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
				<tr>
					<td align="center" colspan="3">
                        &nbsp;</td>
				</tr>
                
				</table>
            
</asp:Content>


