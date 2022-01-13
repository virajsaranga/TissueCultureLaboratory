<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmUpdateDeletePlan.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmUpdateDeletePlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
        .auto-style2 {
            margin-left: 39px;
            width: 185px;
        }
        .auto-style3 {
            margin-left: 29px;
            width: 153px;
        }
        .auto-style5 {
            width: 187px;
            margin-left: 60px;
        }
        .auto-style8 {
            width: 186px;
            margin-left: 44px;
        }
        .auto-style9 {
            margin-left: 34px;
            width: 154px;
        }
        .auto-style10 {
            width: 155px;
            margin-left: 30px;
        }
        .auto-style11 {
            width: 153px;
            margin-left: 30px;
        }
        .auto-style12 {
            margin-left: 34px;
            width: 185px;
        }
        .auto-style15 {
        margin-left: 30px;
        width: 183px;
    }
    .auto-style16 {
        margin-left: 28px;
        width: 183px;
    }
         .auto-style17 {
             width: 80%;
         }

         .up1{
             width:159px;  
             background-color:darkorange;
             height: 37px;
             margin-top: 0;" 
         }
         .del{

             width:184px; 
             background-color:darkorange;
             height: 39px; 
             margin-top: 0;
             margin-left: 55px;
         }
         .sbox{
             border:3px;
             height:40px;
             width:300px;
             border-radius:50px;

         }
         .auto-style18 {
             margin-left: 101px;
              border-radius:50px;
         }
       
    </style>
</asp:Content>

<asp:Content ID="pdmContent5" ContentPlaceHolderID="pdmContentPlaceHolder5" runat="server">

    
      <div style="background-color:lightgreen; background-image:url(../Image/bg.jpg);">
           <%--page title<--%>

<section style ="background-color:darkslateblue; color:aliceblue">
        <center>
        <h2> Manage Plan Details</h2>
            </center>
    </section>
          
      <div>
          <asp:TextBox type="text" id="sbid" class="sbox" runat="server" CssClass="auto-style18" Height="27px" Width="408px"></asp:TextBox>
          <asp:Button  id="search" class="se" Text="Search" OnClick="search_CLick" runat="server" Height="36px" /><br />
          
          
      </div>
            
          
     <%--tabe--%>
    <table style="margin-left:100px;background-color:darkgray;" class="auto-style17"  >
       <tr style="border-block-color:black; border-width:10px;">
           <br /><br /><br />
       <td class="w-50">
        <formview ID="form1" style=" align-content:flex-start;width:70%;" >
               <b> 
             
                <h2> Manage Plan details </h2>
                 <br /><br />
                <label>Plan ID&nbsp&nbsp&nbsp&nbsp: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmUpPlanID" class="auto-style5" runat="server" /><br /><br />
                <label>Plan Name : </label>&nbsp&nbsp&nbsp<asp:Textbox  type="text" id="PdmBottleName" class="auto-style8" runat="server"/><br /><br />
                <label>Variety Name: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmUpVareityName" class="auto-style12" runat="server" /><br /><br />
                <label>Variety code : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmUpVarietyCode" class="auto-style2" runat="server" /><br /><br />
                <label>Num Of plants: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmUpNumOfPlants" class="auto-style16" runat="server" /><br /><br />
                <label>Estimate Time: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmUpEstimateTime" class="auto-style15" runat="server" /><br /><br />
                


                
             
            &nbsp;</formview></td>
           
          <%--2nd line form  --%>
        <td style="width:50% ;">
            <br /><br />
                <b>
                    <div  id="DivToPrint" runat="server">
                <label>No of 1st month plants : </label>&nbsp&nbsp<asp:Textbox  type="text" id="Pdm1st" class="auto-style11" runat="server" /><br /><br />
                <label>No of 2nd month plants: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdm2" class="auto-style10" runat="server"/><br /><br />
                <label>No of 3rd month plants : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdm3" class="auto-style3" runat="server" /><br /><br />
                <label>No of 4th month plants: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdm4" class="auto-style9" runat="server" /><br /><br />
                </div>
                        </b>

           
     
            <br />

             <%--buttons--%>
             <asp:Button id="upb"  Text="UPDATE" class="up1" runat="server" OnClick="upb_Click" />
               
            
                  
                 <asp:Button  id="delb" class="del" Text="DELETE" OnClick="delb_CLick" runat="server" />
                  
                 <br /><br />
             
                <%--  <asp:Button  id="print"  Text="print" OnClick="print_CLick" runat="server" />--%>
            <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Click to print </a> </button>

           </td>
           </tr>
    </table>
 <br /><br /><br /><br />
</div>
</asp:Content>
