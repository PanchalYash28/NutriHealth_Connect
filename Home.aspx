<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="line-height: 30px"><span class="welcome_text">Welcome</span><span class="web_text"> to 
        Nutri Health Website!</span><br />
            <br />
             <span class="green_text">The only nutritionist you will ever want</span>
            <p style="line-height: 30px; text-align: justify;">
        <span > In today’s fast paced world, many people eat unhealthy food to save time. Over period of time their health suffers and they are either underweight or obese. They don’t get to know that slowly they are developing the health related issues due to intake of unhealthy diet. </span>
            
            </p>
    
           <asp:Image ID="Image2" runat="server" Height="300px" 
                ImageUrl="~/images/home1.png" Width="300px" />
           
    <asp:Image ID="Image1" runat="server" Height="300px" 
        ImageUrl="~/images/home2.png" Width="300px" />

        <p style="line-height: 30px; text-align: justify;">
        <span > The project “Nutri-Health” is an online platform that provides the health personnel and patients a way to access health related records by using a computer, Smartphone and internet.  </span><br />
            
            </p>
           
</asp:Content>

