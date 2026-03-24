<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddFood.aspx.cs" Inherits="Admin_AddFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add <span>Food Info</span></h2>
<p>&nbsp;</p>

<table>
				<tr>
					<td>Food Id</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtFoodid" runat="server" CssClass="input" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Food Name</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtFname" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Enter food name" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
                 <tr>
					<td>Food Type</td>
					<td>:</td>
					<td colspan="2">
                        <asp:DropDownList ID="ddlFType" runat="server" CssClass="input" Height="24px" 
                            Width="201px">
                            <asp:ListItem>Choose</asp:ListItem>
                            <asp:ListItem>Fruits</asp:ListItem>
                            <asp:ListItem>Vegetables</asp:ListItem>
                            <asp:ListItem>Cereals and Millets</asp:ListItem>
                            <asp:ListItem>Non Veg</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="ddlFType" Display="Dynamic" ErrorMessage="Choose food type" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="Choose"></asp:RequiredFieldValidator>
                        <br />
                    </td>
				</tr>
				<tr>
					<td>Food Weight</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtFWeight" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtFWeight" Display="Dynamic" ErrorMessage="Enter food weight" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Food Measuremet</td>
					<td>:</td>
					<td colspan="2">
                        <asp:DropDownList ID="ddlFMeasurement" runat="server" CssClass="input" 
                            Height="24px" Width="201px">
                            <asp:ListItem>Choose</asp:ListItem>
                            <asp:ListItem>grams</asp:ListItem>
                            <asp:ListItem>pounds</asp:ListItem>
                            <asp:ListItem>slice</asp:ListItem>
                            <asp:ListItem>piece</asp:ListItem>
                            <asp:ListItem>container</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="ddlFMeasurement" Display="Dynamic" ErrorMessage="Choose food measurement" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red" InitialValue="Choose"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Food Unit</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtFUnit" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtFUnit" Display="Dynamic" ErrorMessage="Enter food unit" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Food Calories</td>
					<td>:</td>
					<td colspan="2">
                        <asp:TextBox ID="txtFCal" runat="server" CssClass="input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtFCal" Display="Dynamic" ErrorMessage="Enter food calories" 
                            Font-Bold="False" Font-Size="10pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
				</tr>
                <tr>
					<td>Category</td>
					<td>:</td>
					<td colspan="2">
                        <asp:CheckBoxList ID="cblCat" runat="server" CellPadding="2" 
                            CellSpacing="2" RepeatColumns="3" RepeatDirection="Horizontal">
                            <asp:ListItem>Breakfast</asp:ListItem>
                            <asp:ListItem>Lunch</asp:ListItem>
                            <asp:ListItem>Dinner</asp:ListItem>
                            <asp:ListItem>Morning Snack</asp:ListItem>
                            <asp:ListItem>Afternoon Snack</asp:ListItem>
                            <asp:ListItem>Midnight Snack</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
				</tr>
                <tr>
					<td>Good For</td>
					<td>:</td>
					<td colspan="2" align="left">
                        <asp:CheckBoxList ID="cblGoodFor" runat="server" CellPadding="2" 
                            CellSpacing="2" RepeatColumns="3" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>
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




