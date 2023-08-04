<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotDeptID.aspx.cs" Inherits="Official_DC_Office.WebForm37" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





         <body style="background-image:url(images/register.jpg);background-size:cover"> 
     <div class="container" style="padding:115px">
         <div class="row" >
             <div class="col-md-5 mx-auto"> 

                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img style="width:132px" src="images/ph.png" />
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h2>Forgot Password</h2>
                                 </center>
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                 <hr />
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
    <asp:Label ID="Label1" runat="server" Text="Enter your DeptID" style="font-size:20px"></asp:Label><br />

                       
                                    <div class="form-group" >
            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter deptID here" runat="server" style="font-size:larger;margin-top:4px" ValidationGroup="my"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="TextBox must not be empty" ValidationGroup="my" ControlToValidate="TextBox1" style="color:red"></asp:RequiredFieldValidator>

                                    </div>
    <asp:Label ID="Label2" runat="server" Text="Enter your Password" style="font-size:20px"></asp:Label><br />

                                 <div class="form-group" >
            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Enter password here" runat="server" style="font-size:larger;margin-top:4px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="TextBox must not be empty" ValidationGroup="my" ControlToValidate="TextBox1" style="color:red"></asp:RequiredFieldValidator>   

                                    </div>
                                  <div class="form-group" style="margin-top:17px">
                                       <asp:Button ID="Button3" class="btn btn-primary btn-block btn-lg " runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="my" />
                                    </div>
                                
                             </div>
                         </div>

                     </div>
                    
                 </div>
                 <h4> <a href="WebForm5.aspx"><< Back to previous page</a></h4>
             </div>
         </div>
     </div>
          </body>
</asp:Content>
