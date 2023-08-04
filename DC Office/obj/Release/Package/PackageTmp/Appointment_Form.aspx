<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Appointment_Form.aspx.cs" Inherits="Official_DC_Office.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <body > 
         


     <div class="container"  style="margin-bottom:48px" >
         
         <div class="row">
             <div class="col-md-10  mx-auto" style="padding:40px"> 
                   <div class="row">
                             <div class="col">
                                 
                                    <%-- <a href="ViewAppointment.aspx" class="btn btn-info btn-lg" style="align-content:flex-end">View Booked Appointments</a>--%>
                                  <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg mt-auto" Text="View Appointments" OnClick="Button2_Click" style="align"/>
                             </div>
                         </div>
                 <div class="card">
                     <div class="card-body">



                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img style="width:176px" src="images/user.png" />
                                 </center>
                             </div>
                         </div>



                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h1> Appointment Form</h1>
                                 </center>
                             </div>
                         </div>


                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>


                          <div class="row">
                             <div class="col-md-12">
                                 <center><asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Name:">Hi ABC</asp:Label></center>
                                 
                             </div>


                         </div>



                           <div class="row">

                           

                                <div class="col-md-12">
                                    <div class="form-group">

                                       
                                          <asp:Label style="font-size:24px" ID="Label9" runat="server" Text="Department Officer :"></asp:Label>

                          <asp:DropDownList runat="server" id="DropDownList1" style="padding:8px;padding-right:550px; font-size:18px"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            
                                                              
                                                                        </asp:DropDownList>

                                    </div>
                               
                             </div>

                          
                            </div>
                         <div class="row">

                           

                                <div class="col-md-12">
                                    <div class="form-group">

                                       
                                          <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="Select Slot  :"></asp:Label>

                          <asp:DropDownList runat="server" id="DropDownList2" style="padding:8px;padding-right:400px; font-size:18px"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" ValidationGroup="my">
                                            
                                                              
                                                                        </asp:DropDownList>
                                          <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="Please Select a valid  Slot!" ValidationGroup="my"  ControlToValidate="DropDownList2" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                                    </div>
                               
                             </div>

                          
                            </div>
                         
                        <div class="row">

                           

                                <div class="col-md-12">
                                    <div class="form-group">

                                       
   <asp:Label style="font-size:24px" ID="Label3" runat="server" Text=" Avaliable Slots :"></asp:Label>
                                        <asp:Label style="font-size:24px" ID="lblmsg" runat="server" Text="Visitors Remaining"></asp:Label>

                                    </div>
                               
                             </div>

                          
                            </div>

                       
                          

                             <div class="row">
                            
                                                       

                                                    <div class="col-md-12">
                                 <asp:Label style="font-size:24px" ID="Label10" runat="server" Text="File:"></asp:Label>
                                    <div class="form-group">

                        <asp:FileUpload ID="FileUpload1" runat="server" type="file"/>            
                           
           <%-- <asp:TextBox ID="TextBox9" CssClass="form-control" style="font-size:15px" placeholder="Upload file here" runat="server"></asp:TextBox>

                                      
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Role field must not be empty" ValidationGroup="my"  style="color:red" ControlToValidate="dropdownrole"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox9" CssClass="form-control" style="font-size:15px" placeholder="Enter Type of Department" runat="server"></asp:TextBox>--%>



                                    </div>
                             </div>
                            
                                           </div>
                         
                           <div class="row">
                             <div class="col-md-12">
                                 <asp:Label style="font-size:24px" ID="Label7" runat="server" Text="Subject:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" TextMode="MultiLine" Height="100" style="font-size:18px" placeholder="Enter your request here" runat="server" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Subject field must not be empty!"  style="color:red" ValidationGroup="my" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                              
<asp:CustomValidator ID="Validator" runat="server" ErrorMessage="* Required"
ClientValidationFunction = "Validate" />
                                    
                               </div>


                             
                         
                         

                       
                                          

                         <div class="row" >
                             <div class="col">

                               
                               
                                  
                                         <div class="form-group ">
         <center><asp:Button ID="Button1" runat="server" class="btn btn-info  btn-lg " Text="Upload" OnServerValidate="false" style="width:280px; font-size:x-large" ValidationGroup="my" OnClick="Button1_Click"  /> </center>
                                    </div>
                                 
                                
                             </div>
                         </div>



                     </div>
                     
                 </div>
                 

                <h4> <a href="WebForm54.aspx"><< Back to previous page</a></h4>
             </div>
         </div>
     </div>
              </body>
</asp:Content>
