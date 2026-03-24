<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditAssestmentRecord.aspx.cs" Inherits="Admin_EditAssestmentRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >Edit <span>Assetment Record</span></h2>
<p >&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                       
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Assestment Record Found" 
                            Font-Size="12pt" Width="99%" DataKeyNames="aid,memberid,did">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="white" VerticalAlign="Middle" 
                                Width="50%" />
                            <Fields>
                                <asp:BoundField DataField="aid" HeaderText="Assestment Record Id" 
                                    SortExpression="aid" ReadOnly="true"/>
                                <asp:BoundField DataField="memberid" HeaderText="Patient Id" 
                                    SortExpression="memberid" ReadOnly="true"/>
                                <asp:BoundField DataField="firstname" HeaderText="Patient Firstname" 
                                    SortExpression="firstname" ReadOnly="true"/>
                                <asp:BoundField DataField="lastname" HeaderText="Patient Lastname" 
                                    SortExpression="lastname" ReadOnly="true"/>
                                <asp:BoundField DataField="did" HeaderText="did" SortExpression="did"  ReadOnly="True" Visible="false"/>
                                <asp:BoundField DataField="dname" HeaderText="Disease Name (if any)" SortExpression="dname" ReadOnly="True"/>

                                 <asp:TemplateField HeaderText="Current Calorie Count"  SortExpression="currentcalories">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCCal" runat="server" Text='<%# Bind("currentcalories") %>' TextMode="SingleLine" CssClass="txt" Width="50px" ></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCCal" runat="server" Text='<%# Bind("currentcalories") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Allergy (if any)" SortExpression="allergy">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAllergy" runat="server" Text='<%# Bind("allergy") %>' Height="50px" TextMode="MultiLine" CssClass="txt" Width="250px" Rows="5"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblAllergy" runat="server" Text='<%# Bind("allergy") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Opertaion Performed(if any)" SortExpression="opertaionperformed">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtOper" runat="server" Text='<%# Bind("opertaionperformed") %>' Height="50px" TextMode="MultiLine" CssClass="txt" Width="250px" Rows="5"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblOper" runat="server" Text='<%# Bind("opertaionperformed") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>
                               
                                 <asp:TemplateField HeaderText="History of Present Illness (if any)" SortExpression="historypresentillness">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtHper" runat="server" Text='<%# Bind("historypresentillness") %>' Height="50px" TextMode="MultiLine" CssClass="txt" Width="250px" Rows="5"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblHper" runat="server" Text='<%# Bind("historypresentillness") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Family History of Illness (if any)" SortExpression="familyhistory">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtFhis" runat="server" Text='<%# Bind("familyhistory") %>' Height="50px" TextMode="MultiLine" CssClass="txt" Width="250px" Rows="5"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblFhis" runat="server" Text='<%# Bind("familyhistory") %>'></asp:Label>
                                        </ItemTemplate>
                                 </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Main Complaint (if any)" SortExpression="maincomplaint">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMcomp" runat="server" Text='<%# Bind("maincomplaint") %>' Height="50px" TextMode="MultiLine" CssClass="txt" Width="250px" Rows="5"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblMcomp" runat="server" Text='<%# Bind("maincomplaint") %>'></asp:Label>
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
                            
                            
                            SelectCommand="SELECT AssestmentRecord.aid, Member.memberid, Member.firstname, Member.lastname, AssestmentRecord.currentcalories, Diseases.did, Diseases.dname, AssestmentRecord.allergy, AssestmentRecord.opertaionperformed, AssestmentRecord.historypresentillness, AssestmentRecord.familyhistory, AssestmentRecord.maincomplaint FROM AssestmentRecord INNER JOIN Diseases ON AssestmentRecord.diseaseid = Diseases.did INNER JOIN Member ON AssestmentRecord.pid = Member.memberid" 
                            DeleteCommand="DELETE FROM AssestmentRecord WHERE (aid = @aid)" 
                            
                            UpdateCommand="UPDATE AssestmentRecord SET currentcalories = @currentcalories, allergy = @allergy, opertaionperformed = @opertaionperformed, historypresentillness = @historypresentillness, familyhistory = @familyhistory, maincomplaint = @maincomplaint  WHERE (aid = @aid)">
                            <DeleteParameters>
                                <asp:Parameter Name="aid" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="currentcalories" />
                                <asp:Parameter Name="allergy" />
                                <asp:Parameter Name="opertaionperformed" />
                                <asp:Parameter Name="historypresentillness" />
                                <asp:Parameter Name="familyhistory" />
                                <asp:Parameter Name="diseaseid" />
                                <asp:Parameter Name="aid" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>



