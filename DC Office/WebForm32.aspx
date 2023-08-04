<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm32.aspx.cs" Inherits="Official_DC_Office.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Reschedule Date</h2>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:Label ID="Label1" runat="server" Text=" Actual Date"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="Enter Reschedule Date"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox><br />
    New Date Slot:<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Reschedule" OnClick="Button1_Click" />
</asp:Content>
