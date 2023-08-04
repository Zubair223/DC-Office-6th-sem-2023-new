<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_To_PDF.aspx.cs" Inherits="Official_DC_Office.Web_To_PDF" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
                        
   <div class="container"  style="margin-bottom:48px" >
         <div class="row">
             <div class="col-md-10 mx-auto" style="padding:40px"> 

                 <div class="card">
                     <div class="card-body">

                       
                       


                          <div class="row">
                             <div class="col-md-6">
                          <img style="width:830px;height:132px;margin-right:92px" src="images/img.jpg" />
                             </div>
                         </div>
                            <div class="row">
                             <div class="col-md-6">
                        <br /> <br /> 
                             </div>
                         </div>

                          <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Name:"></asp:Label>
                                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" style="font-size:17px" placeholder="Enter userid here" runat="server" ValidationGroup="my"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <%--                          <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
                                     <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />
                  --%>  

                                        
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="ApplicantID:"></asp:Label>
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
                                   <asp:Label style="font-size:24px" ID="Label4" runat="server" Text="AppointmentID:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox4" CssClass="form-control" style="font-size:17px" placeholder="Enter your phone no. here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator  style="color:red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                            </div>



                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Officer:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox5" CssClass="form-control" style="font-size:17px" placeholder="Enter  desig here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  style="color:red" runat="server" ErrorMessage="Design field must not be empty!" ValidationGroup="my" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label6" runat="server" Text="Approve:"></asp:Label>
                                    <div class="form-group">
            <asp:TextBox ID="TextBox6" CssClass="form-control" style="font-size:17px" placeholder="Enter office name here" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="office field must not be empty!" ValidationGroup="my" style="color:red"  ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                    </div>
                             </div>
                         </div>

                         
                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label7" runat="server" Text="Slot no:"></asp:Label>
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
                             <div class="col">

                                 <br />
                               
                                  <div class="form-group">
          <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
         
                                    </div>
                                
                             </div>
                         </div>



                     </div>
                    
                 </div>

             </div>
         </div>
     </div>
           
                 
           
         
       </form>
</body>
</html>
