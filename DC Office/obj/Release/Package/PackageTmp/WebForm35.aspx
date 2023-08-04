<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="WebForm35.aspx.cs" Inherits="Official_DC_Office.WebForm35" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
 
  
</head>
    <body>
         <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="markedApp_Id" HeaderText="markedApp_Id" ReadOnly="True" InsertVisible="False" SortExpression="markedApp_Id"></asp:BoundField>
            <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" SortExpression="AppointmentID"></asp:BoundField>
            <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" SortExpression="ApplicantID"></asp:BoundField>
            <asp:BoundField DataField="Marked_Dept" HeaderText="Marked_Dept" SortExpression="Marked_Dept"></asp:BoundField>
            <asp:BoundField DataField="Currentstatus" HeaderText="Currentstatus" SortExpression="Currentstatus"></asp:BoundField>
            <asp:BoundField DataField="marked_Remark" HeaderText="marked_Remark" SortExpression="marked_Remark"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT [markedApp_Id], [AppointmentID], [ApplicantID], [Marked_Dept], [Currentstatus], [marked_Remark] FROM [Marked_Application] WHERE ([AppointmentID] = @AppointmentID)">
        <SelectParameters>
            <asp:SessionParameter SessionField="AppointmentID" Name="AppointmentID" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</form>
        </body>
    </html>