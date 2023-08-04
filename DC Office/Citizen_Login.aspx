<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Citizen_Login.aspx.cs" Inherits="Official_DC_Office.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

                    <%-- Citizen Login Page --%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body style="background-image:url(images/background-learner.jpg);background-size:cover">

        <%--  <body style="background-image:url(images/register.jpg);background-size:cover"> style="background-image:url(images/images.jpg)"--%>
     <div class="container" style="padding:5px;margin-bottom:50px" >
         <div class="row">
         
            <%--  <div class="col-md-6 mx-auto"> --%>
             <div class="col-md-6 mx-auto">
                 <h4 style="text-align:right;font-size:18px;color:azure">Need an account?     <a href="Citizen_Register.aspx" style="color:aqua;text-decoration:none;font-size:21px">    Register Here </a></h4> 
                 <h4></h4>
                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150px" src="images/user.png" />
                                 </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h2>Citizen Login</h2>
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
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text= " Applicant ID:"></asp:Label>
                                    <div class="form-group">
            <%-- <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:15px" placeholder="Enter username here" runat="server" Font-Strikeout="False" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>--%>
                                         <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:20px;height:50px" placeholder="Enter your applicant id here" runat="server" ></asp:TextBox>
                                    </div>
                                  <asp:Label style="font-size:24px" ID="Label2" runat="server" Text= "Password:"></asp:Label>
                                  <div class="form-group">
            <%-- <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:15px" placeholder="Enter username here" runat="server" Font-Strikeout="False" ReadOnly="True" TextMode="SingleLine"></asp:TextBox>--%>
                                         <asp:TextBox ID="TextBox2" CssClass="form-control" style="font-size:20px;height:50px" placeholder="Enter your password here" runat="server" ></asp:TextBox>
                                    </div>
                                     <asp:Label style="font-size:18px;color:red" ID="Label3" runat="server"  ></asp:Label>
                                  <div class="form-group">
            <asp:Button ID="Button1" runat="server" class="btn btn-success btn-block btn-lg" Text="Login" OnClick="Button1_Click1"/>
                                    </div>
                                 <div class="form-group">
            <asp:Button ID="Button2" runat="server" class="btn btn-secondary btn-block btn-lg" Text="Forgot Application ID" OnClick="Button2_Click" />
                                    </div>
                             </div>
                         </div>

                     </div>
                    
                 </div>
                 <h4> <a href="WebForm3.aspx"> << Back to home page</a></h4>
             </div>
         </div>
     </div>
          
</body>
</asp:Content>
