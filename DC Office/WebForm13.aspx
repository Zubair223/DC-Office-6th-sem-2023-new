<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="Official_DC_Office.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <body> 
     <div class="container"  style="margin-bottom:48px" >
         <div class="row">
             <div class="col-md-10  mx-auto" style="padding:40px"> 

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
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Name:"></asp:Label>
                                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:18px" placeholder="Enter your name here" runat="server" ValidationGroup="my" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
           <%--                             <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
                  <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />--%>
              

                                        
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="Email:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:18px" placeholder="Enter your email here" runat="server" TextMode="SingleLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                         </div>



                           <div class="row">

                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Phone:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox3" CssClass="form-control" style="font-size:18px" placeholder="Enter your phone no here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="phone field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                                    </div>


                             </div>

                                <div class="col-md-6">
                                    <div class="form-group">

                                       
                                          <asp:Label style="font-size:24px" ID="Label9" runat="server" Text="Department Officer :"></asp:Label>

                                          <asp:DropDownList runat="server" id="DropDownList1" style="padding:8px;padding-right:292px; font-size:18px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                            
                                                              
                                                                        </asp:DropDownList>

                                    </div>
                               
                             </div>

                          
                            </div>
                       
                          <div class="row">


                              
                               <div class="col-md-12">
                                    <div class="form-group">

                                       
                                          <b><asp:Label style="font-size:52px" ID="Label4" runat="server" Text=" Date:" Visible="False"></asp:Label></b>

                                        <asp:DropDownList ID="DropDownList2" runat="server" Visible="False">

                                        </asp:DropDownList>

                                    </div>
                               
                             </div>
                              
                              </div>
                         <div class="row">
                               <div class="col-md-12">
                                    <div class="form-group">

                                       
                                          <asp:Label style="font-size:24px" ID="Label14" runat="server" Text="SlotTime" Visible="False"></asp:Label>

                                          <asp:DropDownList runat="server" id="DropDownList6" style="padding:8px; font-size:18px" Visible="False"  >

                                            
                                            
                                                                        </asp:DropDownList>

                                    </div>
                               
                             </div>
                              

                              
                            



                          
                            </div>

                         
                           <div class="row">
                        

                                   <%--  <div class="col-md-6">
                                   <asp:Label style="font-size:17px" ID="Label4" runat="server" Text="Gender:"></asp:Label>
                                    <div class="form-group">

                                        <asp:RadioButton ID="RadioButton1" Text="Male" runat="server" style="font-size:25px;font-family: Times New Roman"/>
                                        <asp:RadioButton ID="RadioButton2" Text="Female" runat="server" style="font-size:25px;font-family:'Baskerville Old Face'" />
                                        <asp:RadioButton ID="RadioButton3" Text="Other" runat="server" style="font-size:25px;font-family:'Baskerville Old Face'"/>
            <%-- <asp:TextBox ID="TextBox4" CssClass="form-control" style="font-size:15px" placeholder="Enter your gender here" runat="server"></asp:TextBox>
                                        
                                        <asp:RequiredFieldValidator  style="color:red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                    </div>
                             </div>--%>

                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label6" runat="server" Text="Pin:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox6" CssClass="form-control" style="font-size:18px" placeholder="Enter pin here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Pin field must not be empty!" ValidationGroup="my" style="color:red"  ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                               
                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label8" runat="server" Text="Date:"></asp:Label>
                                    <div class="form-group">
              <asp:TextBox ID="TextBox8" CssClass="form-control" style="font-size:18px" placeholder="Enter date here" runat="server" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Date field must not be empty!" ValidationGroup="my"  style="color:red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
             </div>
                                      
                         </div>
                                  </div>
                         


                             <div class="row">
                            
                                                       

                                                   <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Address:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox5" CssClass="form-control" style="font-size:18px" placeholder="Enter  address here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  style="color:red" runat="server" ErrorMessage="Address field must be filled" ValidationGroup="my" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                                                    <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label10" runat="server" Text="File:"></asp:Label>
                                    <div class="form-group">

                        <asp:FileUpload ID="FileUpload1" runat="server"/>            
                           
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
         <center><asp:Button ID="Button1" runat="server" class="btn btn-info  btn-lg " Text="Upload" OnServerValidate="false" style="width:280px; font-size:x-large" ValidationGroup="my" OnClick="Button1_Click1" /> </center>
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
