<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewDisease.aspx.cs" Inherits="Admin_ViewDisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>View <span>All Diseases</span></h2>
<p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                        
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="did" DataSourceID="SqlDataSource1" 
                            EmptyDataText="Dieseas Info Not Found" Width="99%" CellPadding="4" 
                            CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="did" HeaderText="Disease Id" ReadOnly="True" 
                                    SortExpression="did" />
                                <asp:BoundField DataField="dname" HeaderText="Disease Name" SortExpression="dname" />
                                <asp:BoundField DataField="description" HeaderText="Description" 
                                    SortExpression="description" />
                            </Columns>
                            <HeaderStyle BackColor="#F4911C" ForeColor="White" />
                            <PagerStyle BackColor="#5C6B19" ForeColor="White" />
                        </asp:GridView>
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
                            SelectCommand="SELECT * FROM [Diseases]">
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>




