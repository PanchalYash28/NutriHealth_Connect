<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="UploadPhoto.aspx.cs" Inherits="Member_UploadPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Upload <span>Photo</span></h2>
    <p>&nbsp;</p>

<table width="80%" >
				<tr>
					<td>Upload Your Photo</td>
					<td>:</td>
					<td>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input" 
                            Width="230px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Select photo" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        <asp:Button ID="btnupload" runat="server" CssClass="btn" Text="Upload" 
                            onclick="btnupload_Click" />
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" 
                            ImageUrl="~/images/NoImage.jpg" />
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>


