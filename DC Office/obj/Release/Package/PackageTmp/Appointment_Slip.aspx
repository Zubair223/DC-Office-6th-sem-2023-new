<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Appointment_Slip.aspx.cs" Inherits="Official_DC_Office.WebForm30" EnableEventValidation="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
                        
    <h2>PDF To be downloaded</h2>
                
     <div class="container"  style="margin-bottom:48px" >
         <div class="row">
             <div class="col-md-10 mx-auto" style="padding:40px"> 

                 <div class="card border-info">
                     <div class="card-body">

                       
                       


                          <div class="row">
                             <div class="col-md-6">
                          <img style="width:830px;height:132px;margin-right:92px" src="images/img.jpg" />
                             </div>
                         </div>
                         <br /><br />
                            <div class="row">
                             <div class="col-md-4 mx-auto">
                                 
              <%-- File upload 1 logo--%>                   <asp:Label style="font-size:24px" ID="Label10" runat="server" Text=""></asp:Label>
                              
              <center>      <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("filepath2") %>' Height="90px" Width="110px" /></center>

                                    <div class="form-group">
            
                                    </div>
                                <h2>Appointment Slip</h2>
                        
                             </div>
                         </div>
                         <br /> <br /> <br />
                          <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label1" runat="server" Text="Name:"></asp:Label>
                                 <asp:Label style="font-size:24px" ID="TextBox1" runat="server" ></asp:Label>
                                 
                                    <div class="form-group">
                                               
                  <%--          <asp:TextBox ID="" CssClass="form-control" style="font-size:17px" placeholder="Enter userid here" runat="server" ValidationGroup="my"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="color:red" runat="server" ErrorMessage="Userid must not be empty!" ValidationGroup="my" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                      <asp:CustomValidator ID="CustomValidator1" style="color:red" runat="server" ErrorMessage="No space allowed!" ValidationGroup="my" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox1"></asp:CustomValidator>
                                     <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="" MaximumValue="400" ControlToValidate="TextBox1" 
ErrorMessage="Value must be a whole number " ValidationGroup="my" />
                  --%>  

                                        
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label2" runat="server" Text="ApplicantID:"></asp:Label>
                                  <asp:Label style="font-size:24px" ID="TextBox2" runat="server" Text="ApplicantID:"></asp:Label>
                                    <div class="form-group">
                                           

                                    </div>
                             </div>
                         </div>

                         <br /><br />

                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label3" runat="server" Text="Email:"></asp:Label>
                                 <asp:Label style="font-size:24px" ID="TextBox3" runat="server" Text="Email:"></asp:Label>
                                    <div class="form-group">
                                                             
            

                                    </div>


                             </div>
                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label4" runat="server" Text="AppointmentID:"></asp:Label>
                                   <asp:Label style="font-size:24px" ID="TextBox4" runat="server" Text="AppointmentID:"></asp:Label>
                                    <div class="form-group">
      
                                    </div>
                             </div>
                            </div>

                         <br /><br />

                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label5" runat="server" Text="Officer:"></asp:Label>
                                                                  <asp:Label style="font-size:24px" ID="TextBox5" runat="server" Text="Officer:"></asp:Label>
                                    <div class="form-group">
        
          
                                    </div>
                             </div>


                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label6" runat="server" Text="Approve:"></asp:Label>
                                                <asp:Label style="font-size:24px" ID="TextBox6" runat="server" Text="Approve:"></asp:Label>
                                    <div class="form-group">
            
                                    </div>
                             </div>
                         </div>

                         <br /><br />
                         
                           <div class="row">
                             <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label7" runat="server" Text="Slot no:"></asp:Label>
                                  <asp:Label style="font-size:24px" ID="TextBox7" runat="server" Text="Slot no:"></asp:Label>
                                    <div class="form-group">
            
                                    </div>
                             </div>



                              <div class="col-md-6">
                                   <asp:Label style="font-size:24px" ID="Label8" runat="server" Text="Approved On:"></asp:Label>
                                     <asp:Label style="font-size:24px" ID="TextBox8" runat="server" Text="Date:"></asp:Label>
                                    <div class="form-group">
            
                                    </div>
                             </div>
                         </div>

                         <br /><br />
                         <div class="row">
                              <div class="col-md-6">
                                 <asp:Label style="font-size:24px" ID="Label11" runat="server" Text=""></asp:Label>
                                  <asp:Label style="font-size:24px" ID="Label12" runat="server" Text=""></asp:Label>
                                    <div class="form-group">
            
                                    </div>
                             </div>

                             <div class="col-md-6">
                                     

              <%-- File upload 1 sign--%>                <asp:Label style="font-size:24px" ID="Label9" runat="server" Text="Sign:"></asp:Label>  
                              
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("filepath") %>' Height="90px" Width="110px" />



                             </div>



                             
                             </div>
                         
                         <br /><br />
                         <div class="row">
                             <div class="col">

                                 <br />
                               
                                  <div class="form-group">

            <center>                           <asp:Button ID="btnPrint" runat="server" class="btn btn-primary  btn-lg" style="width:250px;font-size:25px" Text="Print" OnClientClick="javascript:PrintPage();" /></center>
                                    </div>
                                
                             </div>
                         </div>


                         <script type="text/javascript">
    function PrintPage() {
        window.print();
    }
                         </script>



   
                     </div>
                    
                 </div>

             </div>
         </div>
     </div>
</form>
    </body>
    </html>
