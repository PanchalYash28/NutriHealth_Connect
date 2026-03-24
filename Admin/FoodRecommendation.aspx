<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FoodRecommendation.aspx.cs" Inherits="Admin_FoodRecommendation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Food <span>Recommendation</span></h2>

<table width="80%" >
				<tr>
					<td>Member Id</td>
					<td colspan="2">:</td>
					<td>
                        <asp:TextBox ID="txtmid" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Memer Name</td>
					<td colspan="2">:</td>
					<td>
                        <asp:TextBox ID="txtmname" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Gender</td>
					<td colspan="2">:</td>
					<td>
                        <asp:TextBox ID="txtgender" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Age</td>
					<td colspan="2">:</td>
					<td>
                        <asp:TextBox ID="txtage" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                    </td>
				</tr>
				<tr>
					<td>Your Height in Inches</td>
					<td colspan="2">:</td>
					<td>
                        <asp:TextBox ID="txtheight" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
                <tr>
					<td>Your Weight in KG</td>
					<td colspan="2">:</td>
					<td>
                        <asp:TextBox ID="txtweightkg" runat="server" CssClass="input" Font-Bold="True" 
                            Font-Size="12pt" ReadOnly="True"></asp:TextBox>
                        <br />
                    </td>
				</tr>
				<tr>
					<td>Current Status</td>
					<td colspan="2">:</td>
					<td>
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24" 
                            CssClass="input"></asp:Label>
                    </td>
				</tr>
                <tr>
					<td>Daily Caloire Requirement (Approx)</td>
					<td colspan="2">:</td>
					<td>
                    <asp:Label ID="lblactulacal" runat="server" Font-Bold="True" ForeColor="#ED1C24" 
                            CssClass="input"></asp:Label>
                    </td>
				</tr>
                <tr>
					<td>Actual Caloire Needed</td>
					<td colspan="2">:</td>
					<td>
                    <asp:Label ID="lblcstatus" runat="server" Font-Bold="True" ForeColor="#ED1C24" 
                            CssClass="input"></asp:Label>
                    </td>
				</tr>
				<tr>
					<td colspan="2">
                        Caloried Recommended</td>
					<td colspan="2">
                        :<asp:Label ID="lblmess" runat="server" Font-Bold="True" ForeColor="#ED1C24" 
                            CssClass="input">Calories</asp:Label>
                    </td>
				</tr>
				<tr>
					<td colspan="2">
                        &nbsp;</td>
					<td colspan="2">
                        &nbsp;</td>
				</tr>
				<tr>
					<td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="foodid" DataSourceID="SqlDataSource1" 
                            Caption="Food List To Recommend" EmptyDataText="No Food Found">
                            <Columns>
                                <asp:BoundField DataField="foodid" HeaderText="Food Id" ReadOnly="True" 
                                    SortExpression="foodid" />
                                <asp:BoundField DataField="foodname" HeaderText="Food Name" 
                                    SortExpression="foodname" />
                                <asp:BoundField DataField="foodweight" HeaderText="Weight" 
                                    SortExpression="foodweight" />
                                <asp:BoundField DataField="measurement" HeaderText="Kg/gm/pc" 
                                    SortExpression="measurement" />
                                <asp:BoundField DataField="calories" HeaderText="Calories" 
                                    SortExpression="calories" />
                                <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <asp:TextBox runat="server" ID="txtqty" Text="1" Width="40px"></asp:TextBox>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>

                                 <asp:TemplateField>  
                               
                                <ItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true" OnCheckedChanged="CheckedChanged" />  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#F4911C" ForeColor="White" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [foodid], [foodname], [foodweight], [calories], [measurement] FROM [Food]">
                        </asp:SqlDataSource>
                    </td>
				</tr>
				<tr>
					<td colspan="4">
                        &nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">
                        &nbsp;</td>
					<td colspan="2">
                        <asp:Button ID="btnfrecommend" runat="server" CssClass="btn" onclick="btnfrecommend_Click" 
                            Text="Recommend" />
                    </td>
				</tr>
				<tr>
					<td colspan="4" align="center">
                    <asp:Label ID="lblstatus" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>










