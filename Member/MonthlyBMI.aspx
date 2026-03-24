<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="MonthlyBMI.aspx.cs" Inherits="Member_MonthlyBMI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>View Monthly BMI</h2>
    <p>&nbsp;</p>

<table width="99%" >
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>
                        &nbsp;</td>
				</tr>
				<tr>
					<td style="text-align: right">Select Month</td>
					<td>:</td>
					<td>
                        <asp:DropDownList ID="ddl_mon" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="01">Jan</asp:ListItem>
                            <asp:ListItem Value="02">Feb</asp:ListItem>
                            <asp:ListItem Value="03">Mar</asp:ListItem>
                            <asp:ListItem Value="04">Apr</asp:ListItem>
                            <asp:ListItem Value="05">May</asp:ListItem>
                            <asp:ListItem Value="06">Jun</asp:ListItem>
                            <asp:ListItem Value="07">July</asp:ListItem>
                            <asp:ListItem Value="08">Aug</asp:ListItem>
                            <asp:ListItem Value="09">Sep</asp:ListItem>
                            <asp:ListItem Value="10">Oct</asp:ListItem>
                            <asp:ListItem Value="11">Nov</asp:ListItem>
                            <asp:ListItem Value="12">Dec</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
				</tr>
                <tr>
					<td style="text-align: right">Select Year</td>
					<td>:</td>
					<td>
                        <asp:DropDownList ID="ddl_year" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                            <asp:ListItem>2026</asp:ListItem>
                            <asp:ListItem>2027</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
				</tr>
				<tr>
					<td colspan="3" style="text-align: center">
                      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="mid" DataSourceID="SqlDataSource1" 
                            EmptyDataText="Member Info Not Found" Width="99%" CellPadding="4" 
                            CellSpacing="2">
                              <Columns>
                                 <asp:BoundField DataField="cdate" HeaderText="Date" SortExpression="cdate" />
                            
                                <asp:BoundField DataField="mid" HeaderText="Member Id" SortExpression="mid" />
                                <asp:BoundField DataField="weight" HeaderText="Weight" 
                                    SortExpression="weight" />
                                <asp:BoundField DataField="height" HeaderText="Height" 
                                    SortExpression="height" />
                                <asp:BoundField DataField="bmi" HeaderText="BMI" SortExpression="bmi" />
                                <asp:BoundField DataField="cstatus" HeaderText="Status" 
                                    SortExpression="cstatus" />
                             </Columns>
                                                        <HeaderStyle BackColor="#F4911C" ForeColor="White" />
                            <PagerStyle BackColor="#5C6B19" ForeColor="White" />

                        </asp:GridView>
                    </td>
				</tr>
				<tr>
					<td align="center" colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT [mid], [weight], [height], [bmi], [cstatus], [cdate] FROM [PBMI] WHERE (Month(cdate) = @cdate) AND (Year(cdate) = @cyear) AND (mid = @mid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_mon" Name="cdate" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="ddl_year" Name="cyear" 
                                    PropertyName="SelectedValue" />
                                <asp:SessionParameter Name="mid" SessionField="Mid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
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








