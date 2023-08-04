<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="ScheduleAppointment.aspx.cs" Inherits="Official_DC_Office.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <%-- !Important --%>

          <main role="main" class="container">
        <div class="bs-example" >
            <div class="container" style="position:center;padding-block:110px">
                <div class="row">
                    <div class="col-lg-12  text-center" style="padding:32px">
                   <%--  <h1>DC office Appointment portal</h1>--%>
                    <marquee direction="left"><h1><b style="color:floralwhite;font-size:larger"> Schedule Citizen Appointment</b></h1></marquee>
                    <a href="AddSlots.aspx" class="btn btn-warning btn-lg" style="width:225px;padding:10px;font-size:25px;margin-top:52px"><b>Click here >></b></a> 
                    
                    </div>
               </div>
            </div>
        </div>
        </main>
</asp:Content>
