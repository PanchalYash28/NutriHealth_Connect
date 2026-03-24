<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Member_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>View <span>Profile</span></h2>
    <p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                       
                        <asp:DetailsView ID="DetailsView1" runat="server" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" DataKeyNames="memberid" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Profile Found" 
                            Font-Size="12pt" Width="99%">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="white" VerticalAlign="Middle" 
                                Width="35%" />
                            <Fields>
                             <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="imgg1" ImageUrl='<%#Eval("mphoto") %>' runat="server" Height="120" Width="120" AlternateText="Member Photo"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                              
                                <asp:BoundField DataField="memberid" HeaderText="Member Id" 
                                    SortExpression="memberid" ReadOnly="True" />
                                <asp:BoundField DataField="firstname" HeaderText="First Name" 
                                    SortExpression="firstname" ReadOnly="True" />
                                <asp:BoundField DataField="lastname" HeaderText="Last Name" 
                                    SortExpression="lastname" ReadOnly="True"/>
                                <asp:BoundField DataField="gender" HeaderText="Gender" 
                                    SortExpression="gender" ReadOnly="True"/>
                                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age"  ReadOnly="True"/>
                                <asp:BoundField DataField="weight" HeaderText="Weight" 
                                    SortExpression="weight"  ReadOnly="True"/>
                                <asp:BoundField DataField="height" HeaderText="Height" 
                                    SortExpression="height" ReadOnly="True"/>
                                <asp:BoundField DataField="address" HeaderText="Address" 
                                    SortExpression="address" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                                    SortExpression="pincode" />
                                <asp:BoundField DataField="emailid" HeaderText="Email Id" 
                                    SortExpression="emailid" />
                                <asp:BoundField DataField="contactno" HeaderText="Contact No" 
                                    SortExpression="contactno" />
                                <asp:BoundField DataField="occupation" HeaderText="Occupation" 
                                    SortExpression="occupation" ReadOnly="True"/>
                                <asp:CommandField ShowEditButton="True" />
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
                            
                          SelectCommand="SELECT [mphoto], [memberid], [firstname], [lastname], [gender], [age], [weight], [height], [address], [city], [state], [pincode], [emailid], [contactno], [occupation] FROM [Member] WHERE ([memberid] = @memberid)" UpdateCommand="UPDATE Member SET address=@address, city=@city, state=@state, pincode=@pincode, emailid=@emailid, contactno=@contactno
WHERE ([memberid] = @memberid) ">
                            <SelectParameters>
                                <asp:SessionParameter Name="memberid" SessionField="Mid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="address" />
                                <asp:Parameter Name="city" />
                                <asp:Parameter Name="state" />
                                <asp:Parameter Name="pincode" />
                                <asp:Parameter Name="emailid" />
                                <asp:Parameter Name="contactno" />
                                <asp:Parameter Name="memberid" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>




