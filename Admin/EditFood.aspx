<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditFood.aspx.cs" Inherits="Admin_EditFood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Edit <span>Food Info</span></h2>
<p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" DataKeyNames="foodid" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Found Info Found" 
                            Font-Size="12pt" Width="99%">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="white" VerticalAlign="Middle" 
                                Width="35%" />
                            <Fields>
                                <asp:BoundField DataField="foodid" HeaderText="foodid" ReadOnly="True" 
                                    SortExpression="foodid" />
                               
                                <asp:TemplateField HeaderText="Food Name"  SortExpression="foodname">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFname" runat="server" Text='<%# Bind("foodname") %>' TextMode="SingleLine" CssClass="txt" Width="250px" ></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblFname" runat="server" Text='<%# Bind("foodname") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>

                                <asp:TemplateField HeaderText="Food Type" SortExpression="foodtype">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlFType" runat="server" CssClass="txt" Height="24px" Width="204px" SelectedValue='<%# Bind("foodtype") %>'>
                                                <asp:ListItem Value="Choose">Choose</asp:ListItem>
                                                <asp:ListItem Value="Fruits">Fruits</asp:ListItem>
                                                <asp:ListItem Value="Vegetables">Vegetables</asp:ListItem>
                                                <asp:ListItem Value="Cereals and Millets">Cereals and Millets</asp:ListItem>
                                                <asp:ListItem Value="Non Veg">Non Veg</asp:ListItem>
                                         </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("foodtype") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Measurement" SortExpression="measurement">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlFMeasurement" runat="server" CssClass="txt" Height="24px" Width="204px" SelectedValue='<%# Bind("measurement") %>'>
                                                <asp:ListItem Value="Choose">Choose</asp:ListItem>
                                                <asp:ListItem Value="grams">grams</asp:ListItem>
                                                <asp:ListItem Value="pounds">pounds</asp:ListItem>
                                                <asp:ListItem Value="slice">slice</asp:ListItem>
                                                <asp:ListItem Value="piece">piece</asp:ListItem>
                                                <asp:ListItem Value="container">container</asp:ListItem>
                                         </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("measurement") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="foodweight" HeaderText="foodweight" 
                                    SortExpression="foodweight" />
                              
                                <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
                                <asp:BoundField DataField="calories" HeaderText="calories" 
                                    SortExpression="calories" />
                                <asp:BoundField DataField="category" HeaderText="category" 
                                    SortExpression="category" ReadOnly="true"/>
                                <asp:BoundField DataField="goodfor" HeaderText="goodfor" 
                                    SortExpression="goodfor" ReadOnly="true"/>
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
                            DeleteCommand="DELETE FROM Food WHERE (foodid = @foodid)" 
                            SelectCommand="SELECT Food.* FROM Food" 
                            
                            UpdateCommand="UPDATE Food SET foodweight = @foodweight, measurement = @measurement, unit = @unit, calories = @calories, foodname = @foodname WHERE (foodid = @foodid)">
                            <DeleteParameters>
                                <asp:Parameter Name="foodid" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="foodweight" />
                                <asp:Parameter Name="measurement" />
                                <asp:Parameter Name="unit" />
                                <asp:Parameter Name="calories" />
                                <asp:Parameter Name="foodname" />
                                <asp:Parameter Name="foodid" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>



