<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_insertedit_dept.aspx.cs" Inherits="Official_DC_Office.insertedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"
                BorderWidth="3px" CellPadding="4" AutoGenerateColumns="False" ShowFooter="True"
                DataKeyNames="userid" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" Class="table table-bordered table-condensed table-responsive table-hover" Height="305px"  CellSpacing="2" ForeColor="Black">
                <Columns>
                    
                </Columns>

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
        <Columns>

            <asp:TemplateField  HeaderText="UserID">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("userid")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtuserid" runat="server" Text='<%# Eval("userid")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtuseridfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="password">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("passwd")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtpasswd" runat="server" Text='<%# Eval("passwd")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtpasswdfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Email">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("mail")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtmail" runat="server" Text='<%# Eval("mail")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtmailfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Phone">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("phone")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtphone" runat="server" Text='<%# Eval("phone")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtphonefooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="OfDesign">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("ofDesign")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtofDesign" runat="server" Text='<%# Eval("ofDesign")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtofDesignfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Sec">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("sec")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtsec" runat="server" Text='<%# Eval("sec")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtsecfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Handler">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("handler")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txthandler" runat="server" Text='<%# Eval("handler")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txthandlerfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Location">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("loc")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtloc" runat="server" Text='<%# Eval("loc")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtlocfooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            <asp:TemplateField  HeaderText="Role">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("role")%>' runat="server"></asp:Label>            
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtrole" runat="server" Text='<%# Eval("role")%>'></asp:TextBox><%-- column from DB in text --%>
                </EditItemTemplate>
                <FooterTemplate>
            <asp:TextBox ID="txtrolefooter" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>


            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/edit image/edit.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/edit image/delete.jpg" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                </ItemTemplate>

                <EditItemTemplate>
                    <asp:ImageButton ImageUrl="~/edit image/save.jpg" runat="server" CommandName="Update" ToolTip="update" Width="20px" Height="20px" />
                    <asp:ImageButton ImageUrl="~/edit image/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                </EditItemTemplate>

                <%--At the end I have to delete it only for demo it is insert button --%>
                <FooterTemplate>
                    <asp:ImageButton ImageUrl="~/edit image/add.png" runat="server" CommandName="Add" ToolTip="Add" Width="20px" Height="20px" />
                </FooterTemplate>
            </asp:TemplateField>


        </Columns>
    </asp:GridView>
          
            <br />
            <asp:Label ID="lblSuccess" Text="" runat="server" ForeColor="Green"></asp:Label>
            <br />
            <asp:Label ID="lblError" Text="" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
