<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LineDept_Page.aspx.cs" Inherits="Official_DC_Office.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Notification" OnClick="Button1_Click" />
    <center>
        <asp:Label style="font-size:24px" ID="Label6" runat="server" Text="Line Department Officer Login"></asp:Label><br />
       
        <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="All Others"></asp:Label>
                
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="120px" Width="130px" style="text-align:center" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="markedApp_Id" HeaderText="markedApp_Id" ReadOnly="True" InsertVisible="False" SortExpression="markedApp_Id"></asp:BoundField>
                <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" SortExpression="AppointmentID"></asp:BoundField>
                <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" SortExpression="ApplicantID" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="DeptID" HeaderText="DeptID" SortExpression="DeptID" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Marked_Dept" HeaderText="Marked_Dept" SortExpression="Marked_Dept" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="marked_Remark" HeaderText="marked_Remark" SortExpression="marked_Remark" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Uploaded_FileName" HeaderText="Uploaded_FileName" SortExpression="Uploaded_FileName" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Due_Date" HeaderText="Due_Date" SortExpression="Due_Date" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Currentstatus" HeaderText="Currentstatus" SortExpression="Currentstatus"></asp:BoundField>
                <asp:CommandField ShowEditButton="True" HeaderText="Edit table"></asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333"></FooterStyle>

            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#336666" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="White" ForeColor="#333333"></RowStyle>

            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#487575"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#275353"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT * FROM [Marked_Application] where [Marked_dept] = @Marked_dept" DeleteCommand="DELETE FROM [Marked_Application] WHERE [AppointmentID] = @AppointmentID" InsertCommand="INSERT INTO [Marked_Application] ([AppointmentID], [ApplicantID], [DeptID], [Date], [Marked_Dept], [marked_Remark], [Uploaded_FileName], [Priority], [Due_Date], [Currentstatus]) VALUES (@AppointmentID, @ApplicantID, @DeptID, @Date, @Marked_Dept, @marked_Remark, @Uploaded_FileName, @Priority, @Due_Date, @Currentstatus)" UpdateCommand="UPDATE [Marked_Application] SET  [Currentstatus] = @Currentstatus WHERE [AppointmentID] = @AppointmentID">
            <DeleteParameters>
                <asp:Parameter Name="AppointmentID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AppointmentID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ApplicantID" Type="String"></asp:Parameter>
                <asp:Parameter Name="DeptID" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="Date"></asp:Parameter>
                <asp:Parameter Name="Marked_Dept" Type="String"></asp:Parameter>
                <asp:Parameter Name="marked_Remark" Type="String"></asp:Parameter>
                <asp:Parameter Name="Uploaded_FileName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="Due_Date"></asp:Parameter>
                <asp:Parameter Name="Currentstatus" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter SessionField="ofDesign" Name="Marked_dept"></asp:SessionParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ApplicantID" Type="String"></asp:Parameter>
                <asp:Parameter Name="DeptID" Type="String"></asp:Parameter>
                <asp:Parameter Name="Date" DbType="Date"></asp:Parameter>
                <asp:Parameter Name="Marked_Dept" Type="String"></asp:Parameter>
                <asp:Parameter Name="marked_Remark" Type="String"></asp:Parameter>
                <asp:Parameter Name="Uploaded_FileName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                <asp:Parameter Name="Due_Date" DbType="Date"></asp:Parameter>
                <asp:Parameter Name="Currentstatus" Type="String"></asp:Parameter>
                <asp:Parameter Name="AppointmentID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

     <asp:Label style="font-size:24px" ID="Label4" runat="server" Text="Due Date Passed"></asp:Label><br /><br />
        <asp:Label style="font-size:15px" ID="Label7" runat="server" ></asp:Label><br />
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="text-align:center">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black"></FooterStyle>

            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>

            <PagerStyle HorizontalAlign="Right" BackColor="#C6C3C6" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="#DEDFDE" ForeColor="Black"></RowStyle>

            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#594B9C"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#33276A"></SortedDescendingHeaderStyle>
        </asp:GridView>
         <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Due Date within 5 days Grid"></asp:Label><br /><br />
        <asp:Label style="font-size:15px" ID="Label8" runat="server" ></asp:Label><br />
        <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"  style="text-align:center">
            <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

            <RowStyle ForeColor="#000066"></RowStyle>

            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Disposed Grid"></asp:Label>
        <asp:GridView ID="GridView4" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black"  style="text-align:center">
            <FooterStyle BackColor="#CCCCCC"></FooterStyle>

            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Left" BackColor="#CCCCCC" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="White"></RowStyle>

            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
        </asp:GridView>
              <asp:Label style="font-size:24px" ID="Label2" runat="server" Text=""></asp:Label>



     
</asp:Content>
