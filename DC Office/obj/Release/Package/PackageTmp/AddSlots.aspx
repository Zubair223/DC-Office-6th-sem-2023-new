<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="AddSlots.aspx.cs" Inherits="Official_DC_Office.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        
    <center><h3 style="font-size:60px">Adding Appointment Slots</h3></center>
    <div style="font-size:20px;margin-top:160px">
   Hi <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     <center>   UserID<asp:TextBox ID="TextBox7" runat="server" ReadOnly></asp:TextBox></center><br />
       Date <asp:TextBox ID="TextBox2" runat="server" Text="Date" TextMode="Date"></asp:TextBox><br />
       Start time From <asp:TextBox ID="TextBox3" runat="server" TextMode="Time"></asp:TextBox><br />
        End time Till<asp:TextBox ID="TextBox4" runat="server" TextMode="Time" ></asp:TextBox><br />
       No of visitors <asp:TextBox ID="TextBox5" runat="server" > </asp:TextBox><br />
        Remarks<asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox><br />
        
        <asp:Button ID="Button1" runat="server" Text="ADD SLOT" OnClick="Button1_Click" class="btn btn-primary  btn-lg"/>
        <asp:Label ID="Label2" runat="server"></asp:Label>

        <%-- <center><asp:GridView ID="GridView1" runat="server" Height="300px" Width="988px" style="background-color:white;margin-bottom:50px" ></asp:GridView></center>--%>
        </div>
      
    </body>
</asp:Content>
