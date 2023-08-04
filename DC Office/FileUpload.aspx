<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="Official_DC_Office.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>File Upload Example</title>    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />    
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>    
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
</head>
<body>  
    <form id="form1" runat="server">  
    <div>  
      
        <table style="width:100%;">  
            <tr>  
                <td class="style1">  
                     </td>  
                <td>  
                     </td>  
                <td>  
                     </td>  
            </tr>  
            <tr>  
                <td class="style1">  
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" />  
 </td>  
                <td>  
                    <asp:FileUpload ID="FileUpload2" runat="server" />  
                </td>  
                <td>  
                    <asp:FileUpload ID="FileUpload3" runat="server" />  
                </td>  
            </tr>  
            <tr>  
                <td class="style1">  
                    <asp:Label ID="Label1" runat="server"></asp:Label>  
                </td>  
                <td>  
                    <asp:Label ID="Label2" runat="server"></asp:Label>  
                </td>  
                <td>  
                    <asp:Label ID="Label3" runat="server"></asp:Label>  
                </td>  
            </tr>  
            <tr>  
                <td class="style1">  
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />  
                </td>  
                <td>  
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />  
                </td>  
                <td>  
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Upload" />  
                </td>  
            </tr>  
        </table>  
      
    </div>  
    </form>  
</body>  
</html>
