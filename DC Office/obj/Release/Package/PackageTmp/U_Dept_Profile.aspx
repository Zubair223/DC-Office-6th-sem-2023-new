<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="U_Dept_Profile.aspx.cs" Inherits="Official_DC_Office.WebForm31" %>
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
                                     <h2>Update Profile</h2>
                                 </center>
                             </div>
                         </div>


                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>


                          <div class="row">
                             <div class="col-md-10 mx-auto">
                                 <center><b><asp:Label style="font-size:28px" ID="Label1" runat="server" Text="Enter UserID to update other fields:" ></asp:Label></b></center>
                                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:19px; box-sizing:content-box" placeholder="Enter userid here" runat="server" ValidationGroup="my" ReadOnly ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my"  ControlToValidate="TextBox1" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            
                                    </div>
                             </div>

                         </div>


                        
                        

                           <div class="row">
                                  <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="Password:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:15px" placeholder="Enter your password here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </div>
                             </div> 
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Email:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox3" CssClass="form-control" style="font-size:15px" placeholder="Enter your email here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                                    </div>


                             </div>
                              
                            </div>



                         
                           <div class="row">
                               <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label4" runat="server" Text="Dept Phone no:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox4" CssClass="form-control" style="font-size:15px" placeholder="Enter your phone no. here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  style="color:red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                     <div class="col-md-6">
                                     
                                 <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Handler name:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox5" CssClass="form-control" style="font-size:15px" placeholder="Enter handler's name here" runat="server" ></asp:TextBox>
                                  
                                    </div>
                             </div>


                           
                         </div>

                         
                         
                           <div class="row">
                                  
                             <div class="col-md-6">
                                        <h3>Signature:</h3>   <asp:FileUpload ID="FileUpload1" runat="server" />
                               
                             </div>

                                 <div class="col-md-6">
                                     <h3> Logo:</h3>     <asp:FileUpload ID="FileUpload2" runat="server" />
                               
                             </div>

                              
                         </div>

                                    
                                    


                         <div class="row">
                             <div class="col">

                                 <br />
                               
                                  <div class="form-group">
            <center><asp:Button ID="Button1" runat="server" class="btn btn-primary  btn-lg" Text="Update" OnServerValidate="false" style="width:250px" ValidationGroup="my" OnClick="Button1_Click" /> </center>
                                    </div>
                                
                             </div>
                         </div>



                     </div>
                    
                 </div>
                 <h5> <a href="WebForm9.aspx"><< Back to previous page</a></h5>
             </div>
         </div>
     </div>
              </body>
</asp:Content>
