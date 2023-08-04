<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm14.aspx.cs" Inherits="Official_DC_Office.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView " runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
        <Columns>

            <asp:TemplateField  HeaderText="UserID">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("userid")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtuserid" runat="server" Text='<% Eval("userid")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtuseridfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="password">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("passwd")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtpasswd" runat="server" Text='<% Eval("passwd")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtpasswdfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Email">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("mail")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtmail" runat="server" Text='<% Eval("mail")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtmailfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Phone">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("phone")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtphone" runat="server" Text='<% Eval("phone")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtphonefooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="OfDesign">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("ofDesign")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtofDesign" runat="server" Text='<% Eval("ofDesign")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtofDesignfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Sec">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("sec")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtsec" runat="server" Text='<% Eval("sec")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtsecfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Handler">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("handler")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txthandler" runat="server" Text='<% Eval("handler")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtlocfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Location">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("loc")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtloc" runat="server" Text='<% Eval("loc")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtlocfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Role">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("role")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtrole" runat="server" Text='<% Eval("role")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtrolefooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="First Name">
                <ItemTemplate>
                    <asp:Label Text='<% Eval("username")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtuserName" runat="server" Text='<% Eval("username")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtusrernamefooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
</asp:Content>
