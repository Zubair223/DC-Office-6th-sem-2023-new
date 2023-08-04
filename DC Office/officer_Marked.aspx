<%@ Page Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="officer_Marked.aspx.cs" Inherits="Official_DC_Office.officer_Marked" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <body> 
     <div class="container"  style="margin-bottom:48px" >
         <div class="row">
             <div class="col-md-10   mx-auto" style="padding:40px"> 

                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img style="width:165px" src="images/ph.png" />
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h2>Mark To Line_Department</h2>
                                 </center>
                             </div>
                         </div>


                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>


                          <div class="row">
                             <div class="col-md-6">
                                   
                                 <asp:Label style="font-size:24px" ID="Label1" Text="Enter Appointment ID" runat="server" ></asp:Label>
                                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:17px" placeholder="Enter Appointment here" runat="server" ValidationGroup="my"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="AppointmentID must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
               <%--                           <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
                                     <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />
                  --%>  

                                        
                                    </div>
                             </div>


                         </div>

                         <div class="row">
                             
                              <div class="col-md-6">
                                  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                                   
                             </div>
                         </div>

                           <div class="row">
                             <div class="col-md-6">
                                 <h3> GridView:</h3><br />
                                 <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="400px" Height="50px">
                                     <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

                                     <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                                     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                     <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                                     <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                     <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                                     <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                                     <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                                     <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                                 </asp:GridView>

                            
                            </div>

                            </div>

                         


                             
                         </div>

                         
                         
                           <div class="row">
                               <div class="col-md-6">
                                    <asp:Label style="font-size:24px" ID="Label4" Text="Officer Marked To:" runat="server" ></asp:Label>
                             
                            <asp:DropDownList ID="DropDownList1" runat="server" style="font-size:x-large"></asp:DropDownList>

                             </div>

                               </div>
                     <div class="row">

                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="Enter Remark"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:17px" TextMode="MultiLine" Height="80" width="550" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Remark field must not be empty!" ValidationGroup="my"  style="color:red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
    <asp:FileUpload ID="FileUpload1" runat="server" style="font-size:x-large"/><br />

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please choose file!" ValidationGroup="my"  style="color:red" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                                    </div>
                                 </div>
                               
                             </div>


                               <div class="row">
                                   <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Due Date"></asp:Label>
                                   <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" style="font-size:x-large"></asp:TextBox>
                               </div>
                                   </div>
                               

                                            <div class="row">
                             <div class="col-md-6">
                                    <div class="form-group">
                                 <asp:Label style="font-size:24px" ID="Label11" runat="server" Text="Priority:"></asp:Label>

                                       
                                         
                                        <asp:DropDownList runat="server" id="DropDownList2" style="padding:8px;padding-right:297px" ValidationGroup="my" >
                                            
                                                           <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Urgent</asp:ListItem>
        <asp:ListItem>Immediate</asp:ListItem>
        <asp:ListItem>Not Immediate</asp:ListItem>
                                                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Role field must not be empty" ValidationGroup="my"  style="color:red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
            <%-- <asp:TextBox ID="TextBox9" CssClass="form-control" style="font-size:15px" placeholder="Enter Type of Department" runat="server"></asp:TextBox>--%>



                                    </div>
                             </div>



                            
                         </div>

                         <div class="row">
                             <div class="col">

                                 <br />
                               
                                  <div class="form-group">
            <center><asp:Button ID="Button2" runat="server" class="btn btn-primary  btn-lg" Text="Send" OnServerValidate="false" style="width:250px" ValidationGroup="my" OnClick="Button2_Click"/> </center>
                                    </div>
                                
                             </div>
                         </div>



                     </div>
                    
                 </div>
               
             </div>
     
     </div>
              </body>


</asp:Content>




















<%-- 
    <asp:Label ID="Label1" runat="server" Text="Enter Appointment ID" style="font-size:x-large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
  <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" style="font-size:x-large" 
   <asp:GridView ID="GridView1" runat="server" ></asp:GridView>




    <h3>Officer Marked To:</h3> <asp:DropDownList ID="DropDownList1" runat="server" style="font-size:x-large"></asp:DropDownList><br />



    <asp:Label ID="Label2" runat="server" Text="Enter Remark" style="font-size:x-large"></asp:Label>





    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="MultiLine" Height="80" width="550"></asp:TextBox><br />





    <asp:FileUpload ID="FileUpload1" runat="server" style="font-size:x-large"/><br />
   <h3>Priority:  </h3> <asp:DropDownList ID="DropDownList2" runat="server" style="font-size:x-large">
         <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Urgent</asp:ListItem>
        <asp:ListItem>Immediate</asp:ListItem>
        <asp:ListItem>Not Immediate</asp:ListItem>
    </asp:DropDownList><br />




   <h2> Due Date:</h2><asp:TextBox ID="TextBox3" runat="server" TextMode="Date" style="font-size:x-large"></asp:TextBox><br />
    <asp:Button ID="Button2" runat="server" Text="Send" style="font-size:x-large" OnClick="Button2_Click" />
    




--%>