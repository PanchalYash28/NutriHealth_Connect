<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditDisease.aspx.cs" Inherits="Admin_EditDisease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Edit <span>Disease Info</span></h2>
<p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" DataKeyNames="did" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Disease Info Found" 
                            Font-Size="12pt" Width="99%">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="white" VerticalAlign="Middle" 
                                Width="35%" />
                            <Fields>
                                <asp:BoundField DataField="did" HeaderText="Disease Id" ReadOnly="True" 
                                    SortExpression="did" />
                                <asp:BoundField DataField="dname" HeaderText="Disease Name" SortExpression="dname" />
                                
                                 <asp:TemplateField HeaderText="Description" >
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDesc" runat="server" Text='<%# Bind("description") %>' Height="50px" TextMode="MultiLine" CssClass="txt" Width="250px" Rows="5"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblDesc" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>


                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                            DeleteCommand="DELETE FROM Diseases WHERE (did = @did)" 
                            SelectCommand="SELECT Diseases.* FROM Diseases" 
                            UpdateCommand="UPDATE Diseases SET dname = @dname, description = @description WHERE (did = @did)">
                            <DeleteParameters>
                                <asp:Parameter Name="did" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="dname" />
                                <asp:Parameter Name="description" />
                                <asp:Parameter Name="did" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>



