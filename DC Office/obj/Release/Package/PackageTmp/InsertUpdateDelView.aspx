<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InsertUpdateDelView.aspx.cs" Inherits="Official_DC_Office.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     <asp:LinkButton ID="lbAddDeptUsers" runat="server" OnClick="lbAddDeptUsers_Click" >Add Departments</asp:LinkButton>
        <asp:LinkButton ID="lbViewEditUsers" runat="server" >Vie/Edit Users</asp:LinkButton>
   
             

        <asp:PlaceHolder ID="ph_createDeptUsers" runat="server" >
            <div >
               
                
                        <asp:Label ID="Label1" runat="server" Text="UserID"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />

                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />

                        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label4" runat="server" Text="Dept Phone:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
                       
                 <asp:Label ID="Label5" runat="server" Text="Officer Design:"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label6" runat="server" Text="Office / Section name:"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label7" runat="server" Text="Handler name:"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br /><br />
                                 <asp:Label ID="Label8" runat="server" Text="Location:"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Add Departments" OnClick="Button1_Click" />         
    <asp:Button ID="Button2" runat="server" Text="View Departments" OnClick="Button2_Click" />   
                  <asp:Button ID="Button3" runat="server" Text="update" OnClick="Button3_Click" />
                <asp:Label ID="Label9" runat="server" Text=" Update User ID "></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                   <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                  <asp:Label ID="Label10" runat="server" Text="Delete UserID"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </div>
        
        </asp:PlaceHolder>

    

        <asp:PlaceHolder ID="ph_editUsers" runat="server" Visible="false">
            <asp:GridView ID="grd_UserList" runat="server"></asp:GridView>
        </asp:PlaceHolder>
</asp:Content>

