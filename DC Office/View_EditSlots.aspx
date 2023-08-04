<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="View_EditSlots.aspx.cs" Inherits="Official_DC_Office.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
         <center>
             <h2 Style="margin-top: 85px">Appointment Slots</h2>
             <asp:GridView ID="GridView1" runat="server" Height="190px" Width="900px" Style="background-color: aquamarine; margin-top: 45px; margin-bottom: 180px; text-align: center; font-size: 18px" CellPadding="3" GridLines="Vertical" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="slotID" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                 <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>

                 <Columns>
                     <asp:BoundField DataField="slotID" HeaderText="SlotID" ReadOnly="True" InsertVisible="False" SortExpression="slotID"></asp:BoundField>
                     <asp:BoundField DataField="userid" HeaderText="Userid" SortExpression="userid" ReadOnly="True"></asp:BoundField>
                     <asp:BoundField DataField="date" HeaderText="                                 Date" SortExpression="date"></asp:BoundField>
                     <asp:BoundField DataField="start_time" HeaderText="start_time" SortExpression="start_time"></asp:BoundField>
                     <asp:BoundField DataField="end_time" HeaderText="end_time" SortExpression="end_time"></asp:BoundField>
                     <asp:BoundField DataField="n_visitor" HeaderText="n_visitor" SortExpression="n_visitor"></asp:BoundField>
                     <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks"></asp:BoundField>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Edit       /  Delete"></asp:CommandField>
                 </Columns>

                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                 <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" Font-Underline="true" HorizontalAlign="NotSet" Font-Size="X-Large"></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                 <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                 <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                 <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                 <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                 <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                 <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
             </asp:GridView>
             <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT * FROM [C_appointment] WHERE ([userid] = @userid)" DeleteCommand="DELETE FROM [C_appointment] WHERE [slotID] = @slotID"  UpdateCommand="UPDATE [C_appointment] SET [date] = @date, [start_time] = @start_time, [end_time] = @end_time, [n_visitor] = @n_visitor, [remarks] = @remarks, [userid] = @userid WHERE [slotID] = @slotID">
                 <DeleteParameters>
                     <asp:Parameter Name="slotID" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter DbType="Date" Name="date"></asp:Parameter>
                     <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
                     <asp:Parameter DbType="Time" Name="end_time"></asp:Parameter>
                     <asp:Parameter Name="n_visitor" Type="String"></asp:Parameter>
                     <asp:Parameter Name="remarks" Type="String"></asp:Parameter>
                     <asp:Parameter Name="userid" Type="String"></asp:Parameter>
                 </InsertParameters>
                 <SelectParameters>
                     <asp:SessionParameter SessionField="id" Name="userid" Type="String"></asp:SessionParameter>
                 </SelectParameters>
                 <UpdateParameters>
                     <asp:Parameter DbType="Date" Name="date"></asp:Parameter>
                     <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
                     <asp:Parameter DbType="Time" Name="end_time"></asp:Parameter>
                     <asp:Parameter Name="n_visitor" Type="String"></asp:Parameter>
                     <asp:Parameter Name="remarks" Type="String"></asp:Parameter>
                     <asp:Parameter Name="userid" Type="String"></asp:Parameter>
                     <asp:Parameter Name="slotID" Type="Int32"></asp:Parameter>
                 </UpdateParameters>
             </asp:SqlDataSource>
         </center>
</asp:Content>
