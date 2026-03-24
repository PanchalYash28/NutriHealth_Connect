<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewMembers.aspx.cs" Inherits="Admin_ViewMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >View <span>All Members</span></h2>
<p >&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                       
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" DataKeyNames="memberid" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Member Info Found" 
                            Font-Size="12pt" Width="99%">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="White" VerticalAlign="Middle" 
                                Width="35%" />
                            <Fields>
                                <asp:BoundField DataField="memberid" HeaderText="Patient Id" ReadOnly="True" 
                                    SortExpression="memberid" />
                                <asp:BoundField DataField="firstname" HeaderText="First Name" 
                                    SortExpression="firstname" />
                                <asp:BoundField DataField="lastname" HeaderText="Last Name" 
                                    SortExpression="lastname" />
                                <asp:BoundField DataField="gender" HeaderText="Gender" 
                                    SortExpression="gender" />
                                  <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                                <asp:BoundField DataField="address" HeaderText="Address" 
                                    SortExpression="address" />
                                <asp:BoundField DataField="city" HeaderText="Ccity" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="State" 
                                    SortExpression="state" />
                                <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                                    SortExpression="pincode" />
                                <asp:BoundField DataField="occupation" HeaderText="Occupation" 
                                    SortExpression="occupation" />
                                <asp:BoundField DataField="emailid" HeaderText="Email Id" 
                                    SortExpression="emailid" />
                                <asp:BoundField DataField="contactno" HeaderText="Contact No," 
                                    SortExpression="contactno" />
                                <asp:BoundField DataField="weight" HeaderText="Weight" 
                                    SortExpression="weight" />
                                <asp:BoundField DataField="height" HeaderText="Height" 
                                    SortExpression="height" />
                              
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
                            
                            SelectCommand="SELECT [memberid], [firstname], [lastname], [gender], [address], [city], [state], [pincode], [occupation], [emailid], [contactno], [weight], [height], [age] FROM [Member]">
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>




