<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAppointment.aspx.cs" Inherits="Official_DC_Office.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="background-color:cadetblue">
    <body>

    <center>
          <div style="margin-top:12%;font-size:150%">
        <h1>Accepted Appoinments</h1> <asp:GridView ID="GridView4" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="AppointmentID" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="900px" Height="100px" style="font-size:18px;text-align:center" OnRowCommand="GridView4_RowCommand">
            <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" InsertVisible="False" SortExpression="AppointmentID" >


                </asp:BoundField>
                <asp:BoundField DataField="ofDesign" HeaderText="ofDesign" SortExpression="ofDesign"></asp:BoundField>
                <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" SortExpression="ApplicantID"></asp:BoundField>
                <asp:BoundField DataField="SlotID" HeaderText="SlotID" SortExpression="SlotID"></asp:BoundField>
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject"></asp:BoundField>
                <asp:BoundField DataField="filepath" HeaderText="filepath" SortExpression="filepath"></asp:BoundField>
                <asp:CheckBoxField DataField="Is_Approved" HeaderText="Is_Approved" SortExpression="Is_Approved"></asp:CheckBoxField>
                  <asp:TemplateField HeaderText="Appointment Slip">
                              <ItemTemplate>
                                  <asp:Button ID="btnapprove" runat="server" Text="Download" CommandName="Download_Slip" CommandArgument='<%#Eval("filepath")+","+ Eval("AppointmentID")%>' />
                              </ItemTemplate>
                             
                          </asp:TemplateField>
                <asp:TemplateField HeaderText="File">
                              <ItemTemplate>
                                  <asp:Button ID="btnimg" runat="server" Text="Attachment" CommandName="Image" CommandArgument=' <%# Eval("filepath")%>  ' />
                              </ItemTemplate>
                             
                          </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("filepath") %>' Height="80px" Width="100px" />
                </ItemTemplate>
                   </asp:TemplateField>
                  <asp:TemplateField HeaderText="Line Dept Action">
                              <ItemTemplate>
                                  <asp:Button ID="btn_action" runat="server" Text="action" CommandName="Actionbtn" CommandArgument=' <%# Eval("AppointmentID")%>  ' />
                              </ItemTemplate>
                             
                          </asp:TemplateField>
                   <asp:TemplateField HeaderText="Current status">
                              <ItemTemplate>
                                  <asp:Button ID="btn_status" runat="server" Text="status" CommandName="Status" CommandArgument=' <%# Eval("AppointmentID")%>  ' />
                              </ItemTemplate>
                             
                          </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
        </asp:GridView>
              </div>

    </center> 

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT [AppointmentID], [Dept_user_ID], [ApplicantID], [Subject], [Is_Approved], [Approved_on], [SlotID], [Approved_by], [App_remark], [filepath] FROM [Appointment_Dept]">
        </asp:SqlDataSource>




        <%-- <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> 
        <asp:GridView ID="GridView1" runat="server"></asp:GridView> --%>
        <%-- SELECT Appointment_Dept.AppointmentID,admin_insert.ofDesign,Appointment_Dept.ApplicantID,Appointment_Dept.SlotID,Appointment_Dept.Subject,Appointment_Dept.filepath,Appointment_Dept.Is_Approved FROM Appointment_Dept,admin_insert WHERE Appointment_Dept.ApplicantID = ' applicant ' AND Appointment_Dept.Is_Approved =' true ' AND Appointment_Dept.Dept_user_ID = admin_insert.userid; --%>
      
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       
        <center> <h1>Rejected Appoinments</h1>
            <asp:GridView ID="GridView2" runat="server" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="120px" Width="100px"  style="font-size:18px;text-align:center;">

                <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                <RowStyle ForeColor="#000066"></RowStyle>

                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
        </asp:GridView></center>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>




        
      <center style="margin-bottom:90px">  <h1>Pending Appoinments</h1> <asp:GridView ID="GridView3" runat="server" CellPadding="3" GridLines="Vertical" Height="120px" Width="100px" Style="font-size: 18px; text-align: center;" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="AppointmentID" OnRowCommand="GridView3_RowCommand">



              <Columns>
                  <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" InsertVisible="False" SortExpression="AppointmentID"></asp:BoundField>
                  <asp:BoundField DataField="Dept_user_ID" HeaderText="Dept_user_ID" SortExpression="Dept_user_ID"></asp:BoundField>
                  <asp:BoundField DataField="ApplicantID" HeaderText="ApplicantID" SortExpression="ApplicantID"></asp:BoundField>
                  <asp:BoundField DataField="SlotID" HeaderText="SlotID" SortExpression="SlotID"></asp:BoundField>
                  <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject"></asp:BoundField>
                  <asp:BoundField DataField="filepath" HeaderText="filepath" SortExpression="filepath"></asp:BoundField>
                  <asp:CheckBoxField DataField="Is_Approved" HeaderText="Is_Approved" SortExpression="Is_Approved"></asp:CheckBoxField>
                  <asp:BoundField DataField="Approved_on" HeaderText="Approved_on" SortExpression="Approved_on"></asp:BoundField>
                  <asp:BoundField DataField="Approved_by" HeaderText="Approved_by" SortExpression="Approved_by"></asp:BoundField>
                  <asp:BoundField DataField="App_remark" HeaderText="App_remark" SortExpression="App_remark"></asp:BoundField>

        
                  
               
                      
                     
                  <asp:CheckBoxField DataField="Is_reschedule" HeaderText="Is_reschedule" SortExpression="Is_reschedule"></asp:CheckBoxField>
                  <asp:BoundField DataField="Reschedule_remark" HeaderText="Reschedule_remark" SortExpression="Reschedule_remark"></asp:BoundField>
                   <asp:BoundField DataField="Original_SlotID" HeaderText="Original_SlotID" SortExpression="Original_SlotID"></asp:BoundField>
                    <asp:TemplateField HeaderText="Reschedule on new Date">
                              <ItemTemplate>
                                  <asp:Button ID="btnapprove" runat="server" Text="Reschedule" CommandName="Reschedule" CommandArgument='<%# Eval("AppointmentID")%>' />
                              </ItemTemplate>
                             
                          </asp:TemplateField>

               






              </Columns>

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
          <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:dcoffconstr %>' SelectCommand="SELECT * FROM [Appointment_Dept] WHERE ([ApplicantID] = @ApplicantID)">
              <SelectParameters>
                  <asp:SessionParameter SessionField="applicantID" Name="ApplicantID" Type="String"></asp:SessionParameter>
              </SelectParameters>
          </asp:SqlDataSource>
      </center> 

        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </body>
    
</asp:Content>
