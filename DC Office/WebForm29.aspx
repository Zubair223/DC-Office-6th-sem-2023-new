<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="WebForm29.aspx.cs" Inherits="Official_DC_Office.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="filepath" HeaderText="filepath" SortExpression="filepath"></asp:BoundField>
            <asp:BoundField DataField="filepath" HeaderText="filepath" HeaderImageUrl="~/images/165705880.jpg" SortExpression="filepath"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT [filepath] FROM [Appointment_Dept]"></asp:SqlDataSource>
</asp:Content>
