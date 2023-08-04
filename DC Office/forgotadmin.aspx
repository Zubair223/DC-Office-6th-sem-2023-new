<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotadmin.aspx.cs" Inherits="Official_DC_Office.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="Label1" runat="server" Text="Enter your username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Forgot Password" Height="38px" OnClick="Button1_Click" Width="126px" />
        </div>
    </form>
</body>
</html>
