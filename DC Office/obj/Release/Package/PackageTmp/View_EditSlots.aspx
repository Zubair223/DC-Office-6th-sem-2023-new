<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="View_EditSlots.aspx.cs" Inherits="Official_DC_Office.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
         <center>
             <h2 Style="margin-top: 85px">Appointment Slots</h2>
             <asp:GridView ID="GridView1" runat="server" Height="900px" Width="1100px" Style="background-color: aquamarine;margin-top: 45px; margin-bottom: 180px; text-align: center;font-size:18px" CellPadding="10" ForeColor="#333333"  GridLines="None">
                 <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                 <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True"  ForeColor="White"  Font-Underline="true" HorizontalAlign="NotSet" Font-Size="X-Large" ></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                 <RowStyle BackColor="#E3EAEB"></RowStyle>

                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                 <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                 <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                 <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                 <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
             </asp:GridView></center>
</asp:Content>
