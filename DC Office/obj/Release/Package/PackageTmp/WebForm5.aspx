﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Official_DC_Office.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background-image:url(images/register.jpg);background-size:cover">

        <%--  <body style="background-image:url(images/register.jpg);background-size:cover"> --%>
     <div class="container" style="padding:57px" >
         <div class="row">
             <div class="col-md-6 mx-auto"> 

                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150px" src="images/ph.png" />
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h2>Admin Login</h2>
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
                                 <asp:Label style="font-size:20px" ID="Label1" runat="server" Text="Username:"></asp:Label>
                                    <div class="form-group">
            <%-- <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:15px" placeholder="Enter username here" runat="server" Font-Strikeout="False" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>--%>
                                         <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:15px" placeholder="Enter username here" runat="server" ></asp:TextBox>
                                    </div>
                                  <asp:Label style="font-size:20px" ID="Label2" runat="server" Text="Password:" Visible="True"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:15px" placeholder="Enter your password here" runat="server" TextMode="Password"></asp:TextBox>
                                        
                                    </div><br />
                                  <div class="form-group">
            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block btn-lg" Text="Login" OnClick="Button1_Click"/>
                                    </div>
                                 <div class="form-group">
            <asp:Button ID="Button2" runat="server" class="btn btn-info btn-block btn-lg" Text="Forgot Password"  OnClick="Button2_Click"/>
                                    </div>
                             </div>
                         </div>

                     </div>
                    
                 </div>
                 <h4> <a href="WebForm3.aspx"><< Back to home page</a></h4>
             </div>
         </div>
     </div>
          
</body>
</asp:Content>
