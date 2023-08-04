<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPannel.aspx.cs" Inherits="Official_DC_Office.adminPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LinkButton ID="lbAddDeptUsers" runat="server" OnClick="lbAddDeptUsers_Click">Add Departments</asp:LinkButton>
        <asp:LinkButton ID="lbViewEditUsers" runat="server" OnClick="lbViewEditUsers_Click">Vie/Edit Users</asp:LinkButton>
        <asp:PlaceHolder ID="ph_createDeptUsers" runat="server" Visible="false">
            <div>
                        <asp:Label ID="Label1" runat="server" Text="Type:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

                        <asp:Label ID="Label2" runat="server" Text="userID:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />

                        <asp:Label ID="Label3" runat="server" Text="password:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label4" runat="server" Text="email:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
                       
                 <asp:Label ID="Label5" runat="server" Text="phone No:"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label6" runat="server" Text="Office Name:"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label7" runat="server" Text="handler name:"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br /><br />

           
                    </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="ph_editUsers" runat="server" Visible="false">
            <asp:GridView ID="grd_UserList" runat="server"></asp:GridView>
        </asp:PlaceHolder>
    </form>
</body>
</html>
