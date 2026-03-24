<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="MyFoodRecommendation.aspx.cs" Inherits="Member_MyFoodRecommendation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>My Food <span>Recommendation</span></h2>
    <p>&nbsp;</p>

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
                        &nbsp;</td>
					<td colspan="2">
                        &nbsp;</td>
				</tr>
				<tr>
					<td colspan="4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT Food.foodname, Food.foodweight, Food.measurement, Food.calories, FoodRecommendation.units, FoodRecommendation.rdate FROM Food INNER JOIN FoodRecommendation ON Food.foodid = FoodRecommendation.foodid WHERE (FoodRecommendation.mid = @mid)">
                            <SelectParameters>
                                <asp:SessionParameter Name="mid" SessionField="Mid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" 
                            Caption="Food Plan" EmptyDataText="No Food Plan Found">
                            <Columns>
                            <asp:BoundField DataField="rdate" HeaderText="Date" SortExpression="rdate" />
                                <asp:BoundField DataField="foodname" HeaderText="Food Name" 
                                    SortExpression="foodname" />
                                <asp:BoundField DataField="foodweight" HeaderText="Weight" 
                                    SortExpression="foodweight" />
                                <asp:BoundField DataField="measurement" HeaderText="Kg/gm/pc" 
                                    SortExpression="measurement" />
                                 <asp:BoundField DataField="units" HeaderText="Units" SortExpression="units" />
                                <asp:BoundField DataField="calories" HeaderText="Calories" 
                                    SortExpression="calories" />
                               
                                
                            </Columns>
                            <HeaderStyle BackColor="#F4911C" ForeColor="White" />
                        </asp:GridView>
                    </td>
				</tr>
				<tr>
					<td colspan="2">
                        &nbsp;</td>
					<td colspan="2">
                        &nbsp;</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
                    <asp:Label ID="lblstatus" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                    </td>
				</tr>
				</table>
            
</asp:Content>

