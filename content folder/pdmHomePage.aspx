<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmHomePage.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/productionManage.css" rel="stylesheet" /> 


    <style>


        
.pdmHpBtn1 {
    background-color: chocolate;
    border-radius: 12px;
    width: 300px;
    margin-left: 81px;
    height: 100px;
    background-color: chocolate;
    color: black;
    border: 2px solid #000000;
}

.pdmHpBtn1:hover {
    opacity: 8;
    color: black;
    background-color: green;
   
     
}

.logo{
    margin-left:48%;
}



h2{
    font-weight: bold;
    position: relative;
    animation: mymove 5s infinite;
}
h2.preptest {
    animation-timing-function: linear;
}

h2.preptest1{
    animation-timing-function: ease;
}

h2.preptest2{
    animation-timing-function: ease-in;
}

h2.preptest3{
    animation-timing-function: ease-out;
}

h2.preptest4{
    animation-timing-function: ease-in-out;
}

@keyframes mymove {
            from {
                left: 0px;
            }

            to {
                left: 200px;
            }
        }
    </style>




</asp:Content>

<asp:Content ID="pdmContent8" ContentPlaceHolderID="pdmContentPlaceHolder8" runat="server">

     <div style="background-color:gray; background-image:url(../Image/back.jpg); ">
          
         <section style="background-color:darkolivegreen;">
 
        <center>
        <h3>PRODUCTION DEPARTMENT</h3> 
            </center>
            
    </section>
         
        <section style="  background-image:url(../Image/gif.gif); color:aliceblue;">
             <center>
            <h2>Welcome</h2>
              </center>
            <a class="pdmhomea1"><i class="fas fa-home" style="font-size:20px; "></i></a>
         </section>
        
    <br /><br /><br /><br />
    <table style="width:90%; margin-left:40px;">
         <tr>
             
             <td >
                 <div class="pdmHpTd">
              
      <br /><br />

        <center>
        <asp:Button ID="pdm4" class="pdmHpBtn1"  runat="server" OnClick="pdmb4_Click" Text="production Instruction" > </asp:Button> 

        <asp:Button ID="pdmb1"  class="pdmHpBtn1" runat="server"  OnClick="pdmb1_Click" Text="Production plan"></asp:Button> 

        <asp:Button ID="pdmb2" class="pdmHpBtn1" runat="server" OnClick="pdmb2_Click" Text="Plant bottle details"></asp:Button> <br /><br />
         <asp:Button ID="pdm5"  class="pdmHpBtn1" runat="server" OnClick="pdm5_Click" Text="Generate plan Report"></asp:Button>
        <asp:Button ID="pdmb3"  class="pdmHpBtn1" runat="server" OnClick="pdmb3_Click" Text="Generate Bottle Report"></asp:Button> <br /><br /><br /><br />
        
        </center>
                     
            <img class="logo" src="../Image/logo.png" />
                 <br /><br />
                </div>

              
                     <h6 class="logo" style="color:blanchedalmond">@copyright <br /> tissuCultureLab</h6>
                
                     </td>
       
             

             

             
 </tr>
        

    </table>

         <br /><br /><br /><br />
</div>

</asp:Content>
