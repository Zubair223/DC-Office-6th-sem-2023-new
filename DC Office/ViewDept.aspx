<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewDept.aspx.cs" Inherits="Official_DC_Office.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <body>
        <center><h2 style="background-color:cadetblue; margin-left:550px;margin-right:550px; padding:18px">Department  view</h2></center>
    <div style="padding-top:70px;padding-bottom:100px; padding-left:50px;padding-right:50px">
        <asp:GridView ID="GridView1" runat="server"
            Class="table table-bordered table-condensed " BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid"></asp:BoundField>
                <asp:BoundField DataField="passwd" HeaderText="passwd" SortExpression="passwd"></asp:BoundField>
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail"></asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone"></asp:BoundField>
                <asp:BoundField DataField="ofDesign" HeaderText="ofDesign" SortExpression="ofDesign"></asp:BoundField>
                <asp:BoundField DataField="sec" HeaderText="sec" SortExpression="sec"></asp:BoundField>
                <asp:BoundField DataField="handler" HeaderText="handler" SortExpression="handler"></asp:BoundField>
                <asp:BoundField DataField="loc" HeaderText="loc" SortExpression="loc"></asp:BoundField>
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role"></asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Edit   /   Delete"></asp:CommandField>
            </Columns>

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
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' DeleteCommand="DELETE FROM [admin_insert] WHERE [userid] = @userid" InsertCommand="INSERT INTO [admin_insert] ([userid], [passwd], [mail], [phone], [ofDesign], [sec], [handler], [loc], [role]) VALUES (@userid, @passwd, @mail, @phone, @ofDesign, @sec, @handler, @loc, @role)" SelectCommand="SELECT [id], [userid], [passwd], [mail], [phone], [ofDesign], [sec], [handler], [loc], [role] FROM [admin_insert]" UpdateCommand="UPDATE [admin_insert] SET [passwd] = @passwd, [mail] = @mail, [phone] = @phone, [ofDesign] = @ofDesign, [sec] = @sec, [handler] = @handler, [loc] = @loc, [role] = @role WHERE [userid] = @userid">
            <DeleteParameters>
                <asp:Parameter Name="userid" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userid" Type="String"></asp:Parameter>
                <asp:Parameter Name="passwd" Type="String"></asp:Parameter>
                <asp:Parameter Name="mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="ofDesign" Type="String"></asp:Parameter>
                <asp:Parameter Name="sec" Type="String"></asp:Parameter>
                <asp:Parameter Name="handler" Type="String"></asp:Parameter>
                <asp:Parameter Name="loc" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="passwd" Type="String"></asp:Parameter>
                <asp:Parameter Name="mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="ofDesign" Type="String"></asp:Parameter>
                <asp:Parameter Name="sec" Type="String"></asp:Parameter>
                <asp:Parameter Name="handler" Type="String"></asp:Parameter>
                <asp:Parameter Name="loc" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="String"></asp:Parameter>
                <asp:Parameter Name="userid" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        </body>
    
</asp:Content>






