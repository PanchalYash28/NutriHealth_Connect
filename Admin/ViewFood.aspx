<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewFood.aspx.cs" Inherits="Admin_ViewFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>View <span>All Foods</span></h2>
<p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                       
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" DataKeyNames="foodid" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Disease Info Found" 
                            Font-Size="12pt" Width="99%">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="white" VerticalAlign="Middle" 
                                Width="35%" />
                            <Fields>
                                <asp:BoundField DataField="foodid" HeaderText="Food Id" ReadOnly="True" 
                                    SortExpression="foodid" />
                                <asp:BoundField DataField="foodname" HeaderText="Food Name" 
                                    SortExpression="foodname" />
                                <asp:BoundField DataField="foodtype" HeaderText="Food Type" 
                                    SortExpression="foodtype" />
                                <asp:BoundField DataField="foodweight" HeaderText="Food Weight" 
                                    SortExpression="foodweight" />
                                <asp:BoundField DataField="measurement" HeaderText="Measurement" 
                                    SortExpression="measurement" />
                                <asp:BoundField DataField="unit" HeaderText="Unit" SortExpression="unit" />
                                <asp:BoundField DataField="calories" HeaderText="Calories" 
                                    SortExpression="calories" />
                                <asp:BoundField DataField="category" HeaderText="Category (Meal Time)" 
                                    SortExpression="category" />
                                <asp:BoundField DataField="goodfor" HeaderText="Good For Diseases Like" 
                                    SortExpression="goodfor" />
                            </Fields>
                            <PagerStyle BackColor="#5C6B19" ForeColor="White" />
                        </asp:DetailsView>
                    </td>
				</tr>
                 <tr>
					<td>
                        <br />
                    </td>
				</tr>
				<tr>
					
					<td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Food]">
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>


