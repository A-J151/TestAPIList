<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestAPI.aspx.cs" Inherits="TestAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet/Design.css" rel="stylesheet" />
    <title></title>
 
</head>
<body>
    <form id="form1" runat="server" style="resize:both;">
    <div class="MainDiv">
        <div class="Header">
            <h3>Window Title</h3>
        </div>
        <div class="LeftPanel">
           <ul>
               <li><asp:LinkButton ID="linkGet" runat="server" Text="GET /pet" class="fcolor" OnClick="linkGet_Click"></asp:LinkButton></li>
               <li><asp:LinkButton ID="linkPost" runat="server" Text="POST /pet" class="fcolor" OnClick="linkPost_Click"></asp:LinkButton></li>               
               <li><asp:LinkButton ID="linkCust" runat="server" Text="GET /Customers" class="fcolor" OnClick="linkCust_Click"></asp:LinkButton></li>
           </ul>
        </div>
        <div class="RightPanel">
            <asp:Panel ID="GETPet" runat="server" Visible="true">
                <div class="Panel1">
                   <div class="Row1" style="
    border-bottom:2px #10c510 solid ">
                     <pre><asp:Button ID="btnPost" runat="server" Text="POST" class="btnStyle" OnClick="btnPost_Click"/> <span>/Pet Create a new pet and return id</span></pre> 
                    </div>
                    <div class="Row2">
                        <h3 style="margin:2px !important">Parameters</h3>
                    </div>
                   <div class="Row1" >
                       <table style="font-size:14px !important; font-weight:normal !important; border-bottom:thin black">
                           <tr>
                               <th>Name</th>
                               <th>Description</th>
                           </tr>
                           <tr>
                               <td>body <span style="color:red;font-size:11px !important">*Required</span></td>
                           </tr>
                           <tr>
                               <td style="font-size:12px !important">object</td>
                               <td>Create a new pet and return id</td>
                           </tr>
                           <tr>
                               <td><i style="color:darkgrey; font-size:11px !important">(body)</i> </td>
                               
                               <td><br /><span style="font-weight:bold !important; ">Example value</span></td>
                           </tr>
                           <tr>
                               <td></td>
                                <td >                                
                                    <asp:Panel ID="InnerPanel" runat="server" Visible="true" BackColor="Black" Height="145px">
                                    </asp:Panel>
                                </td>
                           </tr>
                       </table>
                       </div>
                                        <div class="Row2">
                        <h3 style="margin:2px !important">Response</h3>
                    </div>
                    
                   <div class="Row1" >
                       <table style="font-size:14px !important; font-weight:normal !important; border-bottom:thin black">
                           <tr>
                               <th>Code</th>
                               <th>Description</th>
                           </tr>
                           <tr>
                               <td>200</td>
                           </tr>
                           <tr>
                               <td ></td>
                               <td><br /><span style="font-weight:bold !important; ">Example value</span></td>
                           </tr>
                         
                           <tr>
                               <td></td>
                                <td >                                
                                    <asp:Panel ID="Panel1" runat="server" Visible="true" BackColor="Black" Height="145px">
                                    </asp:Panel>
                                </td>
                           </tr>
                       </table>
                       </div>
                </div>
            </asp:Panel>
             <asp:Panel ID="PostPet" runat="server" Visible="false">
                 <div class="Panel1">
                   <div class="Row1" style="
    border-bottom:2px #10c510 solid ">
                     <pre><asp:Button ID="Button1" runat="server" Text="GET" class="btnStyle"/> <span>/Pet Get pet details and return id</span></pre> 
                    </div>
                    <div class="Row2">
                        <h3 style="margin:2px !important">Parameters</h3>
                    </div>
                   <div class="Row1" >
                       <table style="font-size:14px !important; font-weight:normal !important; border-bottom:thin black">
                           <tr>
                               <th>Name</th>
                               <th>Description</th>
                           </tr>
                           <tr>
                               <td>body <span style="color:red;font-size:11px !important">*Required</span></td>
                           </tr>
                           <tr>
                               <td style="font-size:12px !important">object</td>
                               <td>Get pet Details and return id</td>
                           </tr>
                           <tr>
                               <td><i style="color:darkgrey; font-size:11px !important">(body)</i> </td>
                               
                               <td><br /><span style="font-weight:bold !important; ">Example value</span></td>
                           </tr>
                           <tr>
                               <td></td>
                                <td >                                
                                    <asp:Panel ID="Panel2" runat="server" Visible="true" BackColor="Black" Height="145px">
                                    </asp:Panel>
                                </td>
                           </tr>
                       </table>
                       </div>
                                        <div class="Row2">
                        <h3 style="margin:2px !important">Response</h3>
                    </div>
                    
                   <div class="Row1" >
                       <table style="font-size:14px !important; font-weight:normal !important; border-bottom:thin black">
                           <tr>
                               <th>Code</th>
                               <th>Description</th>
                           </tr>
                           <tr>
                               <td>200</td>
                           </tr>
                           <tr>
                               <td ></td>
                               <td><br /><span style="font-weight:bold !important; ">Example value</span></td>
                           </tr>
                         
                           <tr>
                               <td></td>
                                <td >                                
                                    <asp:Panel ID="Panel3" runat="server" Visible="true" BackColor="Black" Height="145px">
                                    </asp:Panel>
                                </td>
                           </tr>
                       </table>
                       </div>
                </div>
             </asp:Panel>
             <asp:Panel ID="GETCust" runat="server" Visible="false">
                 <div class="Panel1">
                   <div class="Row1" style="border-bottom:2px #10c510 solid ">
                     <pre><asp:Button ID="Button2" runat="server" Text="GET" class="btnStyle"/> <span>/Get Customers and return id</span></pre> 
                    </div>
                    <div class="Row2">
                        <h3 style="margin:2px !important">Parameters</h3>
                    </div>
                   <div class="Row1" >
                       <table style="font-size:14px !important; font-weight:normal !important; border-bottom:thin black">
                           <tr>
                               <th>Name</th>
                               <th>Description</th>
                           </tr>
                           <tr>
                               <td>body <span style="color:red;font-size:11px !important">*Required</span></td>
                           </tr>
                           <tr>
                               <td style="font-size:12px !important">object</td>
                               <td>Create a new pet and return id</td>
                           </tr>
                           <tr>
                               <td><i style="color:darkgrey; font-size:11px !important">(body)</i> </td>
                               
                               <td><br /><span style="font-weight:bold !important; ">Example value</span></td>
                           </tr>
                           <tr>
                               <td></td>
                                <td >                                
                                    <asp:Panel ID="Panel4" runat="server" Visible="true" BackColor="Black" Height="145px">
                                    </asp:Panel>
                                </td>
                           </tr>
                       </table>
                       </div>
                                        <div class="Row2">
                        <h3 style="margin:2px !important">Response</h3>
                    </div>
                    
                   <div class="Row1" >
                       <table style="font-size:14px !important; font-weight:normal !important; border-bottom:thin black">
                           <tr>
                               <th>Code</th>
                               <th>Description</th>
                           </tr>
                           <tr>
                               <td>200</td>
                           </tr>
                           <tr>
                               <td ></td>
                               <td><br /><span style="font-weight:bold !important; ">Example value</span></td>
                           </tr>
                         
                           <tr>
                               <td></td>
                                <td >                                
                                    <asp:Panel ID="Panel5" runat="server" Visible="true" BackColor="Black" Height="145px">
                                    </asp:Panel>
                                </td>
                           </tr>
                       </table>
                       </div>
                </div>
             </asp:Panel>
        </div>
    </div>
    </form>
    <script>
        fetch('./jsonFile.json')
   .then(
     function (response) {
         if (response.status !== 200) {
             console.log('Looks like there was a problem. Status Code: ' +
               response.status);
             return;
         }

         // Examine the text in the response
         response.json().then(function (data) {
             console.log(data);
         });
     }
   )
   .catch(function (err) {
       console.log('Fetch Error :-S', err);
   });
    </script>
</body>
</html>
