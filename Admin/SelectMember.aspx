<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SelectMember.aspx.cs" Inherits="Admin_SelectMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>View <span>Members &amp; Recommended Food</span></h2>
    <p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                        
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataKeyNames="memberid" DataSourceID="SqlDataSource1" 
                            EmptyDataText="Members Info Not Found" Width="99%" CellPadding="4" 
                            CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="memberid" HeaderText="Member Id" ReadOnly="True" 
                                    SortExpression="memberid" />
                                <asp:BoundField DataField="firstname" HeaderText="First Name" 
                                    SortExpression="firstname" />
                                <asp:BoundField DataField="lastname" HeaderText="Last Name" 
                                    SortExpression="lastname" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" 
                                    SortExpression="gender" />
                              
                                <asp:HyperLinkField DataNavigateUrlFields="memberid" ItemStyle-HorizontalAlign="Center"
                                DataNavigateUrlFormatString="FoodRecommendation.aspx?MID={0}" HeaderText="Food" 
                                Text="View" />
                            </Columns>
                            <HeaderStyle BackColor="#F4911C" ForeColor="White" />
                            <PagerStyle BackColor="#BCD989" ForeColor="Black" />
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
                            
                            SelectCommand="SELECT memberid, firstname, lastname, gender FROM Member">
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>




