<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Official_DC_Office.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%-- <asp:Label ID="Label1" runat="server" Text="Enter your username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Forgot Password" Height="38px"  Width="126px" OnClick="Button1_Click" />--%>
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
                                 <asp:Label style="font-size:20px" ID="Label1" runat="server" Text="Enter Username:" ></asp:Label>
                                    <div class="form-group" >
            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter username here" runat="server" style="font-size:larger;margin-top:4px"></asp:TextBox>

                                    </div>
                                
                                  <div class="form-group" style="margin-top:17px">
                                       <asp:Button ID="Button3" class="btn btn-primary btn-block btn-lg " runat="server" Text="Submit" OnClick="Button1_Click" />
                                    </div>
                                
                             </div>
                         </div>

                     </div>
                    
                 </div>
                 <h4> <a href="WebForm5.aspx"><< Back to admin page</a></h4>
             </div>
         </div>
     </div>
          </body>
</asp:Content>



