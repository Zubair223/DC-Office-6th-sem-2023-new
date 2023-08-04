<%@ Page Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="officer_Marked.aspx.cs" Inherits="Official_DC_Office.officer_Marked" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label ID="Label1" runat="server" Text="Enter Appointment ID" style="font-size:x-large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" style="font-size:x-large" />
   <asp:GridView ID="GridView1" runat="server" ></asp:GridView>
    <h3>Officer Marked To:</h3> <asp:DropDownList ID="DropDownList1" runat="server" style="font-size:x-large"></asp:DropDownList><br />
    <asp:Label ID="Label2" runat="server" Text="Enter Remark" style="font-size:x-large"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="MultiLine" Height="80" width="550"></asp:TextBox><br />
    <asp:FileUpload ID="FileUpload1" runat="server" style="font-size:x-large"/><br />
   <h3>Priority:  </h3> <asp:DropDownList ID="DropDownList2" runat="server" style="font-size:x-large">
         <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Urgent</asp:ListItem>
        <asp:ListItem>Immediate</asp:ListItem>
        <asp:ListItem>Not Immediate</asp:ListItem>
    </asp:DropDownList><br />
   <h2> Due Date:</h2><asp:TextBox ID="TextBox3" runat="server" TextMode="Date" style="font-size:x-large"></asp:TextBox><br />
    <asp:Button ID="Button2" runat="server" Text="Send" style="font-size:x-large" OnClick="Button2_Click" />
    
</asp:Content>
