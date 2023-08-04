<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="AddSlots.aspx.cs" Inherits="Official_DC_Office.WebForm16" %>
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
                                     <h2>Add Appointment Slots</h2>
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
                                 <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Officer Name:" ></asp:Label>
                                 <br />
                                
                                    <div class="form-group">
                                        
    <asp:Label ID="Label1" runat="server" Text="Label" style="font-size:24px;font-weight:bold"></asp:Label>
                <%--             <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:17px" placeholder="Enter userid here" runat="server" ValidationGroup="my"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
                                     <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />
                  --%>  

                                        
                                    </div>
                             </div>
                              
                          <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Dept User ID:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" style="font-size:17px" runat="server" ReadOnly></asp:TextBox>
                                      
                                    </div>
                             </div>
                         </div>

                    

                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label6" runat="server" Text="Date:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:17px"  Text="Date" TextMode="Date" runat="server" ValidationGroup="my"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Date can not be empty" style="color:red" ControlToValidate="TextBox2" ValidationGroup="my"></asp:RequiredFieldValidator>                                       
                              
                                         <asp:CompareValidator ID="cvDateTime" runat="server" Operator="GreaterThan" ControlToValidate="TextBox2" ValidationGroup="my"
        ErrorMessage="Not valid" Type="Date"></asp:CompareValidator>

                              
                                    </div>


                             </div>
                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label7" runat="server" Text="Start Time:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox3" CssClass="form-control" style="font-size:17px" TextMode="Time" runat="server" ValidationGroup="my"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Time can not be empty" style="color:red" ControlToValidate="TextBox3" ValidationGroup="my"></asp:RequiredFieldValidator>
                                    </div>

                                  
                                         <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="LessThan" ControlToValidate="TextBox3" ControlToCompare="TextBox4" ValidationGroup="my"
        ErrorMessage="Not valid" ></asp:CompareValidator>

                             </div>
                            </div>

                         

                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label8" runat="server" Text="End Time:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox4" CssClass="form-control" style="font-size:17px" TextMode="Time" runat="server" ValidationGroup="my"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Time can not be empty" style="color:red" ControlToValidate="TextBox4" ValidationGroup="my"></asp:RequiredFieldValidator>
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label9" runat="server" Text="No of visitors:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox5" CssClass="form-control" style="font-size:17px" placeholder=" No of visitors " runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="textbox can not be empty" style="color:red" ControlToValidate="TextBox5" ValidationGroup="my"></asp:RequiredFieldValidator>                   
                                    </div>
                             </div>
                         </div>

                         
                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label10" runat="server" Text="Remarks:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox6" CssClass="form-control" style="font-size:17px" runat="server" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Text field must not be empty!"  style="color:red" ValidationGroup="my" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                    </div>
                             </div>



                             
                         </div>

                                          

                         <div class="row">
                             <div class="col">

                                 <br />
                               
                                  <div class="form-group">
            <center>         <asp:Button ID="Button1" class="btn btn-primary  btn-lg" runat="server" Text="ADD SLOT"  OnServerValidate="false" style="width:250px" ValidationGroup="my" OnClick="Button1_Click1" /></center>                 
            
                                    </div>
                                
                             </div>
                         </div>

                           <asp:Label ID="Label2" runat="server"></asp:Label>

                     </div>
                    
                 </div>
                 <h5> <a href="WebForm9.aspx"><< Back to previous page</a></h5>
             </div>
         </div>
     </div>
              </body>
</asp:Content>
