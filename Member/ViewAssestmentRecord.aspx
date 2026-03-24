<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="ViewAssestmentRecord.aspx.cs" Inherits="Member_ViewAssestmentRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>View <span>Assetment Record</span></h2>
    <p>&nbsp;</p>

<table width="99%">
				
				<tr>
					<td>
                       
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" CellPadding="4" CellSpacing="2" 
                            DataSourceID="SqlDataSource1" EmptyDataText="No Assestment Record Found" 
                            Font-Size="12pt" Width="99%">
                            <FieldHeaderStyle BackColor="#F4911C" ForeColor="white" VerticalAlign="Middle" 
                                Width="40%" />
                            <Fields>
                                <asp:BoundField DataField="aid" HeaderText="Assestment Record Id" 
                                    SortExpression="aid" />
                                <asp:BoundField DataField="memberid" HeaderText="Patient Id" 
                                    SortExpression="memberid" />
                                <asp:BoundField DataField="firstname" HeaderText="Patient Firstname" 
                                    SortExpression="firstname" />
                                <asp:BoundField DataField="lastname" HeaderText="Patient Lastname" 
                                    SortExpression="lastname" />
                                <asp:BoundField DataField="currentcalories" HeaderText="Current Calorie Count" 
                                    SortExpression="currentcalories" />
                                <asp:BoundField DataField="dname" HeaderText="Disease Name (if any)" SortExpression="dname" />
                                <asp:BoundField DataField="allergy" HeaderText="Allergy (if any)" 
                                    SortExpression="allergy" />
                                <asp:BoundField DataField="opertaionperformed" HeaderText="Opertaion Performed (if any)" 
                                    SortExpression="opertaionperformed" />
                                <asp:BoundField DataField="historypresentillness" HeaderText="History of Present Illness (if any)" 
                                    SortExpression="historypresentillness" />
                                <asp:BoundField DataField="familyhistory" HeaderText="Family History of Illness (if any)" 
                                    SortExpression="familyhistory" />
                                <asp:BoundField DataField="maincomplaint" HeaderText="Main Complaint (if any)" 
                                    SortExpression="maincomplaint" />
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
                            
                            
                            SelectCommand="SELECT AssestmentRecord.aid, Member.memberid, Member.firstname, Member.lastname, AssestmentRecord.currentcalories, Diseases.dname, AssestmentRecord.allergy, AssestmentRecord.opertaionperformed, AssestmentRecord.historypresentillness, AssestmentRecord.familyhistory, AssestmentRecord.maincomplaint FROM AssestmentRecord INNER JOIN Diseases ON AssestmentRecord.diseaseid = Diseases.did INNER JOIN Member ON AssestmentRecord.pid = Member.memberid WHERE (Member.memberid = @memberid)">
                             <SelectParameters>
                                <asp:SessionParameter DefaultValue="" Name="memberid" SessionField="Mid" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
				</tr>
				
				</table>
            
</asp:Content>






