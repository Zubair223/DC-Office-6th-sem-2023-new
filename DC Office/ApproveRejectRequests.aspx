<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="ApproveRejectRequests.aspx.cs" Inherits="Official_DC_Office.WebForm24" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
  
   <center style="margin-bottom:80px"> 
         <h2>Approve Requests</h2>

       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  style="text-align:center;font-size: 18px" Height="150px" width="1400px"  OnRowCommand="GridView1_RowCommand" >
           <Columns >
               <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" InsertVisible="False" SortExpression="AppointmentID"></asp:BoundField>
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


                          <asp:TemplateField HeaderText="Image" HeaderStyle-Width="200px">
                <ItemTemplate>
                   <asp:Button ID="btnimg" runat="server" Text="Attachment" CommandName="Image" CommandArgument=' <%# Eval("filepath")%>  ' />
                </ItemTemplate>
                   </asp:TemplateField>
    



      <%--         <asp:TemplateField HeaderText="Action by Line Department">
                              <ItemTemplate>
                                  <asp:Button ID="btnaction" runat="server" Text="Action" CommandName="Action" CommandArgument=' <%# Eval("AppointmentID")%>  ' />
                              </ItemTemplate>
                             
                          </asp:TemplateField>
               --%> 
           </Columns>
           <FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

           <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>

           <PagerStyle HorizontalAlign="Left" BackColor="#99CCCC" ForeColor="#003399"></PagerStyle>

           <RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

           <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99"></SelectedRowStyle>

           <SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

           <SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

           <SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

           <SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
       </asp:GridView>


    
       <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT [AppointmentID], [SlotID], [Subject], [filepath], [Is_Approved] FROM [Appointment_Dept] WHERE ([Dept_user_ID] = @Dept_user_ID)">

           <SelectParameters>
               <asp:SessionParameter SessionField="id" Name="Dept_user_ID" Type="String"></asp:SessionParameter>
           </SelectParameters>
       </asp:SqlDataSource>
   </center>
</asp:Content>



















