<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmViewPlan.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmViewPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 197px;
            height: 26px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            height: 26px;
            margin-left: 0px;
        }
        .auto-style4 {
            margin-left: 70px;
            background-color:darkorange;
            height:80px;
            width:350px;
            border-radius:8px;
        }

        .create{
             margin-left: 30px;
            background-color:crimson;
            height:80px;
            width:350px;
            border-radius:8px;
           
        }
        .img1{
            height:100px;
            width:200px;
             margin-left:30%;

        }
        .img2{
            height:100px;
            width:200px;
            margin-left:30%;
            
        }
        .create:hover {
            opacity: 8;
            color: black;
            background-color: green;
        }
         .auto-style4:hover {
            opacity: 8;
            color: black;
            background-color: green;
        }
     
}
    </style>
</asp:Content>
 
<asp:Content ID="pdmContent7" ContentPlaceHolderID="pdmContentPlaceHolder7" runat="server">
    <div style=" background-image:url(../Image/bg.jpg);">
    <section style ="background-color:darkslateblue">
        <center>
        <h2 style="color:aliceblue" >View And Create Plan</h2>
            </center>
    </section>
    

    <table style="width:80%;height:60%;margin-left:100px;background-color:darkgray" class="auto-style2">
        <tr style="background-color:darkgray;height:100px;   ">
            <td style="width:50%;">
                  <center class="auto-style5">
                   <b>
               <br /><br />
                      <asp:Button ID="planView"  class="create" Text="Manage Master Plan" runat="server" OnClick="planView_Click" />  <br />
                       
                      <br /><br />
                     
                  
                     </center>
             
                <td class="auto-style6">
                    
                    |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />| 
                
                        </td>
            </td>
            
            <td style="width:50%;">
        
              <br /><br /> <br /><br /><br />
            <asp:Button ID="Button1" OnClick="pdmp1_Click" runat="server" Text=" Create Plan" class="auto-style4"> </asp:Button><br />
                
            
            <br /><br />

                
                <br /><br/><br/>
            </td>

        </tr><tr style="height:100px"><td>  <img src="../Image/axall.gif" class="img1" /></td><td>

             |<br />|<br /> |<br />|<br /> 
                                               </td><td><img src="../Image/pln.gif" class="img2" /></td></tr><tr style="height:100px;"><td></td><td> |<br />|<br /> |<br />|<br /> |<br />|<br /> |<br />|<br /></td><td></td></tr>
        <br /><br />

    </table>
    <br /><br />
    </div>
</asp:Content>
