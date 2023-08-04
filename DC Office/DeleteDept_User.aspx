<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeleteDept_User.aspx.cs" Inherits="Official_DC_Office.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<body style="background-image:url(images/register.jpg);background-size:cover"> --%>
    <body>
     <div class="container" style="padding:99px">
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
                                     <h2>Delete Department User </h2>
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
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Enter UserID:" ></asp:Label>
                                    <div class="form-group" style="margin-bottom:12px">
            <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:18px;margin-top:10px" placeholder="Enter userid here" runat="server"></asp:TextBox>

                                    </div>
                                
                                  <div class="form-group">
                                       <asp:Button ID="Button3" class="btn btn-primary btn-block btn-lg" style="margin-top:24px" runat="server" Text="Submit" OnClick="Button3_Click"  />
                                    </div>
                                
                             </div>
                         </div>

                     </div>
                    
                 </div>
                 <h5> <a href="WebForm5.aspx"><< Back to admin page</a></h5>
             </div>
         </div>
     </div>
          </body>
</asp:Content>
