<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="Official_DC_Office.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background-image:url(images/register.jpg);background-size:cover">
    <h1>Officer's Schedule</h1>






        <asp:GridView ID="GridView1" runat="server"></asp:GridView>





        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox><br /><br />


        <asp:Label ID="Label2" runat="server" Text="From time -- To Time"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="Button1" runat="server" Text="Add" />


</body>
</asp:Content>
