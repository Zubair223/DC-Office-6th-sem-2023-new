<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="WebForm35.aspx.cs" Inherits="Official_DC_Office.WebForm35" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
 
  
</head>
    <body  style="background-image:url(images/images.jpg);background-size:cover">
         <form id="form1" runat="server">
    <center> <h1>Line Department</h1><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"  Height="110px">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="markedApp_Id" HeaderText="markedApp_Id" ReadOnly="True" InsertVisible="False" SortExpression="markedApp_Id"></asp:BoundField>
                <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" SortExpression="AppointmentID"></asp:BoundField>
                <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" SortExpression="ApplicantID"></asp:BoundField>
                <asp:BoundField DataField="Marked_Dept" HeaderText="Marked_Dept" SortExpression="Marked_Dept"></asp:BoundField>
                <asp:BoundField DataField="Currentstatus" HeaderText="Currentstatus" SortExpression="Currentstatus"></asp:BoundField>
                <asp:BoundField DataField="marked_Remark" HeaderText="marked_Remark" SortExpression="marked_Remark"></asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#E3EAEB"></RowStyle>

            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView></center>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT [markedApp_Id], [AppointmentID], [ApplicantID], [Marked_Dept], [Currentstatus], [marked_Remark] FROM [Marked_Application] WHERE ([AppointmentID] = @AppointmentID)">
        <SelectParameters>
            <asp:SessionParameter SessionField="AppointmentID" Name="AppointmentID" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</form>
        </body>
    </html>