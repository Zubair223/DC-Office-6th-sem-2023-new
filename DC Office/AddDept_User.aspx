﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddDept_User.aspx.cs" Inherits="Official_DC_Office.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%-- Add Departments --%>

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
                                     <h2>Add Departments</h2>
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
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="UserID:"></asp:Label>
                                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:17px" placeholder="Enter userid here" runat="server" ValidationGroup="my"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                        <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
              <%--                         <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />
                  --%>  

                                        
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="Password:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:17px" placeholder="Enter your password here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                         </div>



                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Email:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox3" CssClass="form-control" style="font-size:17px" placeholder="Enter your email here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator style="color:red"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                                    </div>


                             </div>
                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label4" runat="server" Text="Dept Phone no:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox4" CssClass="form-control" style="font-size:17px" placeholder="Enter your phone no. here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  style="color:red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                            </div>



                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Officer Desig:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox5" CssClass="form-control" style="font-size:17px" placeholder="Enter  desig here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  style="color:red" runat="server" ErrorMessage="Design field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label6" runat="server" Text="Office/Section Name:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox6" CssClass="form-control" style="font-size:17px" placeholder="Enter office name here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="office field must not be empty!" ValidationGroup="my" style="color:red"  ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                         </div>

                         
                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label7" runat="server" Text="Handler name:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" style="font-size:17px" placeholder="Enter handler's name here" runat="server" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Handler field must not be empty!"  style="color:red" ValidationGroup="my" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                                    </div>
                             </div>



                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label8" runat="server" Text="Location:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox8" CssClass="form-control" style="font-size:17px" placeholder="Enter Deptartment location here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Loc field must not be empty!" ValidationGroup="my"  style="color:red" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                         </div>

                                            <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label9" runat="server" Text="Type of Department:"></asp:Label>
                                    <div class="form-group">

                                       

                                        <asp:DropDownList runat="server" id="dropdownrole" style="padding:8px;padding-right:297px" ValidationGroup="my" >
                                            
                                                             <asp:ListItem Text="Option" ></asp:ListItem>
                                                        <asp:ListItem Text="Main Office" ></asp:ListItem>
                                                                  <asp:ListItem Text="Sub Office"></asp:ListItem>
                                                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Role field must not be empty" ValidationGroup="my"  style="color:red" ControlToValidate="dropdownrole"></asp:RequiredFieldValidator>
            <%-- <asp:TextBox ID="TextBox9" CssClass="form-control" style="font-size:15px" placeholder="Enter Type of Department" runat="server"></asp:TextBox>--%>



                                    </div>
                             </div>



                            
                         </div>

                         <div class="row">
                             <div class="col">

                                 <br />
                               
                                  <div class="form-group">
            <center><asp:Button ID="Button1" runat="server" class="btn btn-primary  btn-lg" Text="ADD" OnServerValidate="false" style="width:250px" ValidationGroup="my" OnClick="Button1_Click"/> </center>
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








<%-- OnClick="Button1_Click"--%>





<%--  <asp:PlaceHolder ID="ph_createDeptUsers" runat="server" >
 <asp:PlaceHolder ID="ph_createDeptUsers" runat="server" >
            <div >
               
                
                        <asp:Label ID="Label1" runat="server" Text="UserID"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />

                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />

                        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label4" runat="server" Text="Dept Phone:"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
                       
                 <asp:Label ID="Label5" runat="server" Text="Officer Design:"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label6" runat="server" Text="Office / Section name:"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br /><br />

                 <asp:Label ID="Label7" runat="server" Text="Handler name:"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br /><br />
                                 <asp:Label ID="Label8" runat="server" Text="Location:"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Add Departments" OnClick="Button1_Click" />         
    <asp:Button ID="Button2" runat="server" Text="View Departments" OnClick="Button2_Click" />   
                  <asp:Button ID="Button3" runat="server" Text="update" OnClick="Button3_Click" />
                <asp:Label ID="Label9" runat="server" Text=" Update User ID "></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                   <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                  <asp:Label ID="Label10" runat="server" Text="Delete UserID"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </div>
        
        </asp:PlaceHolder>
        
        </asp:PlaceHolder>--%>