<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="ViewTodayRequest.aspx.cs" Inherits="Official_DC_Office.WebForm33" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>     <h2>Today's Requests</h2>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="130px" Style="background-color: aquamarine; margin-top: 45px; margin-bottom: 180px; text-align: center; font-size: 18px" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" InsertVisible="False" SortExpression="AppointmentID"></asp:BoundField>
            <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" SortExpression="ApplicantID"></asp:BoundField>
            <asp:BoundField DataField="Dept_user_ID" HeaderText="Dept_user_ID" SortExpression="Dept_user_ID"></asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
            <asp:BoundField DataField="SlotID" HeaderText="SlotID" SortExpression="SlotID"></asp:BoundField>
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject"></asp:BoundField>
            <asp:BoundField DataField="filepath" HeaderText="filepath" SortExpression="filepath"></asp:BoundField>
            <asp:CheckBoxField DataField="Is_Approved" HeaderText="Is_Approved" SortExpression="Is_Approved"></asp:CheckBoxField>
            <asp:TemplateField HeaderText="Approve">
                <ItemTemplate>
                    <asp:Button ID="btnapprove" runat="server" Text="approve" CommandName="Approval" CommandArgument=' <%# Eval("AppointmentID")%>  ' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Reject">
                <ItemTemplate>
                    <asp:Button ID="btnreject" runat="server" Text="Reject" CommandName="Rejection" CommandArgument=' <%# Eval("AppointmentID")%>  ' />
                </ItemTemplate>

            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

        <RowStyle ForeColor="Black" BackColor="#EEEEEE"></RowStyle>

        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
    </asp:GridView>

    </center>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT [AppointmentID], [ApplicantID], [Dept_user_ID], [date], [SlotID], [Subject], [filepath], [Is_Approved] FROM [Appointment_Dept]"></asp:SqlDataSource>
</asp:Content>
