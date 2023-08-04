<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Citizen_Register.aspx.cs" Inherits="Official_DC_Office.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <body style="background-image:url(images/background-learner.jpg);background-size:cover">

     <div class="container"  style="margin-bottom:48px" >
         <div class="row">
             <div class="col-md-8  mx-auto" style="padding:40px"> 
                  <h4 style="text-align:right;font-size:18px;color:azure"> Already have an account?     <a href="Citizen_Login.aspx" style="color:mediumaquamarine;text-decoration:none;font-size:21px">    Login Here </a></h4> 


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
                                     <h1> Registration Form</h1>
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
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Name:"></asp:Label>
                                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:18px;height:50px" placeholder="Enter your name here" runat="server" ValidationGroup="my" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
           <%--                             <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
                  <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />--%>
              

                                        
                                    </div>
                             </div>


                         </div>





                          <div class="row">
                               <div class="col-md-12">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="Email:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:18px;height:50px" placeholder="Enter your email here" runat="server" TextMode="SingleLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </div>
                             </div>



                         </div>


                            



                           <div class="row">

                             <div class="col-md-12">
                                 <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Phone:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox3" CssClass="form-control" style="font-size:18px;height:50px" placeholder="Enter your phone no here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="phone field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                                    </div>


                             </div>

                                

                          
                            </div>
                       
                      
                             
                         
                         
                         
                           <div class="row">

                            
                                                   <div class="col-md-12">
                                 <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Address:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox5" CssClass="form-control" style="font-size:18px;height:50px" placeholder="Enter  address here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  style="color:red" runat="server" ErrorMessage="Address field must be filled" ValidationGroup="my" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                                

                          
                            </div>
                       






                         
                                   


                                          

                         <div class="row" >
                             <div class="col">

                               
                               
                                  
                                         <div class="form-group ">
         <center><asp:Button ID="Button1" runat="server" class="btn btn-info  btn-lg " Text="Register" OnServerValidate="false" style="width:280px; font-size:x-large" ValidationGroup="my" OnClick="Button1_Click"  /> </center>
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
