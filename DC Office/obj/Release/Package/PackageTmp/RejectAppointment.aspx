<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="RejectAppointment.aspx.cs" Inherits="Official_DC_Office.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Rejection Reason"></asp:Label>
    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="MultiLine" Height="80" style="font-size:18px" placeholder="Enter your request here" runat="server" ></asp:TextBox><br />

    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
</asp:Content>
