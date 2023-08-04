<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="Official_DC_Office.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body>
        <center><h2 style="background-color:cadetblue; margin-left:550px;margin-right:550px; padding:18px">Department  view</h2></center>
    <div style="padding-top:70px;padding-bottom:100px; padding-left:50px;padding-right:50px">
 <asp:GridView ID="GridView1" runat="server" 
     Class="table table-bordered table-condensed " BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
     <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
     <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
     <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
     <RowStyle BackColor="White" ForeColor="#003399" />
     <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
     <SortedAscendingCellStyle BackColor="#EDF6F6" />
     <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
     <SortedDescendingCellStyle BackColor="#D6DFDF" />
     <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
     </div>
        </body>
    
</asp:Content>






