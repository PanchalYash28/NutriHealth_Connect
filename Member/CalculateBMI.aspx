<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterPage..master" AutoEventWireup="true" CodeFile="CalculateBMI.aspx.cs" Inherits="Member_CalculateBMI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Calculate <span>BMI</span></h2>
    <p>&nbsp;</p>
<table width="80%" >
            <tr>
                <td style="height: 18px">
                    </td>
                <td style="height: 18px">
                    </td>
            </tr>
            <tr>
                <td>
                    Select The Metric</td>
                <td>
                    <asp:RadioButton ID="rdus" runat="server" GroupName="wtmetric" 
                        oncheckedchanged="CalcMetrics" Text="US Metric" AutoPostBack="True" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdother" runat="server" GroupName="wtmetric" 
                        oncheckedchanged="CalcMetrics" Text="Standard Metric" 
                        AutoPostBack="True" />
                </td>
            </tr>
            </table>
    <asp:Panel ID="USPanel" runat="server">
        <table width="80%" >
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Enter Height in Inches</td>
                <td>
                    :</td>
                <td>
                    <asp:DropDownList ID="ddlFoot" runat="server" CssClass="input" Width="70px">
                        <asp:ListItem Value="-1">Feet</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:DropDownList ID="ddlInch" runat="server" CssClass="input" Width="70px">
                        <asp:ListItem Value="-1">Inches</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblinch" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Enter Weight in Pounds</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtweight" runat="server" CssClass="input" Width="150px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblpound" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btncalculate" runat="server" CssClass="btn" Text="Calculate" 
                            onclick="btncalculate_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" style="height: 18px">
                    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                </td>
            </tr>
          
           
        </table>
    </asp:Panel>
   <asp:Panel ID="OtherPanel" runat="server">
        <table width="80%" >
              <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
              <tr>
                  <td>
                      Enter Height in Meters</td>
                  <td>
                      :</td>
                  <td>
                      <asp:DropDownList ID="ddlFoot0" runat="server" CssClass="input" Width="70px">
                          <asp:ListItem Value="-1">Feet</asp:ListItem>
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>9</asp:ListItem>
                      </asp:DropDownList>
                      &nbsp;<asp:DropDownList ID="ddlInch0" runat="server" CssClass="input" Width="70px">
                          <asp:ListItem Value="-1">Inches</asp:ListItem>
                          <asp:ListItem>0</asp:ListItem>
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>9</asp:ListItem>
                          <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>11</asp:ListItem>
                      </asp:DropDownList>
                      <br />
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Label ID="lblmeter" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                  </td>
              </tr>
            <tr>
                <td>
                    Enter Weight in KG</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtweightkg" runat="server" CssClass="input" Width="150px"></asp:TextBox>
                    <br />
                </td>
            </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Label ID="lblpound0" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Button ID="btncalculateother" runat="server" CssClass="btn" 
                          onclick="btncalculateother_Click" Text="Calculate" />
                  </td>
              </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lblmsg0" runat="server" Font-Bold="True" ForeColor="#ED1C24"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            </table>
    </asp:Panel>
    <table border="0" cellpadding="4" cellspacing="0" 
                            
        style="border-style: none; border-color: inherit; border-width: 0px; border-collapse: collapse; border-spacing: 0px; margin-left:150px; margin-top:10px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; width: 218px;" 
        align="center">
                        <tbody style="margin: 0px; padding: 0px; border: 0px;">
                            <tr style="margin: 0px; padding: 0px; border: 0px;">
                                <td style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; padding: 0px; margin: 0px; border: 0px; text-align: left;" 
                                        valign="top">
                                    <p style="font-family: Verdana, Arial, sans-serif; font-size: 1.05em; line-height: 17px; color: rgb(0, 0, 0); margin: 1.5em 0px 0px; padding: 0px 0px 12px; border: 0px;">
                                        <b style="margin: 0px; padding: 0px; border: 0px;">BMI Categories:<br /> Underweight = &lt;18.5<br /> Normal weight = 18.5–24.9<br /> Overweight = 25–29.9<br /> Obesity = BMI of 30 or greater</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
</asp:Content>






