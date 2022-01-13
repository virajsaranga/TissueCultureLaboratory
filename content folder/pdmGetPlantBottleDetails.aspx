<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmGetPlantBottleDetails.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmGetPlantBottleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 185px;
            margin-left: 23px;
            margin-right: 0;
        }
        .auto-style2 {
            width: 186px;
            margin-left: 17px;
        }
        .auto-style3 {
            width: 52%
        }
        .auto-style5 {
            width: 101px;
        }
        .auto-style6 {
            width: 96px;
        }
        .auto-style7 {
            width: 80%;
            margin-bottom: 0px;
        }
        
        .viewbtn1{

            width:150px; 
            background-color:darkorange;
            height: 30px;
            margin-left: 30px; 
            margin-top: 0;
            border-radius:5px;
            
        }
        .auto-style8 {
            margin-left: 7px;
        }
        .auto-style9 {
            margin-left: 23px;
        }
        .auto-style12 {
            margin-left: 128px;
            margin-top: 0;
        }
        .auto-style13 {
            margin-left: 49px;
        }
        .auto-style14 {
            margin-left: 28px;
            
        }
        .auto-style15 {
            margin-left: 128px;
        }
        .auto-style16 {
            margin-left: 17px;
        }
        </style>
</asp:Content>
<asp:Content ID="pdmContent3" ContentPlaceHolderID="pdmContentPlaceHolder3" runat="server">
      
    <div  style=" background-image:url(../Image/bg.jpg);" >
     <%--page title  --%>
    <section style ="background-color:darkslateblue; color:aliceblue;">
        <center>
        <h2> Plant Bottle Details </h2>
            </center>
          
    </section>
    
     <%--table--%>
    <table style="margin-left:100px;" class="auto-style7"  >
       <tr style="border-block-color:black; background-color:darkgray">
           
       <td class="auto-style3">
           <br />
           <div style=" margin-left:30%";>
        <formview style="align-content:flex-start; width:70%;">
                <b>
                <h2> View bottle details </h2>
                 <br /><br />
                <label class="auto-style5">Bottle ID&nbsp&nbsp&nbsp&nbsp</label><br />&nbsp&nbsp<asp:Textbox  type="text" id="pdmGetBottleID" class="auto-style2" placeholder="enter id" runat="server"/><br /><br />
                <label class="auto-style6">Variety Code  </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><asp:Textbox id="PdmGetBottledate" class="auto-style1" placeholder="Enter code" runat="server"/><br />
                
             
            <br />
                
             
            </b><br />
             
            &nbsp;<asp:Button ID="viewbtn1" class="viewbtn1"  text="View" runat="server" OnClick="viewbtn1_Click"  /></formview><br /><br />
              
                <asp:Button ID="Button1" class="viewbtn1"  text="Update" runat="server" OnClick="Update_Click" /> <br /><br />
               
               <asp:Button ID="Button2" class="viewbtn1"  text="Delete" runat="server" OnClick="Delete_Click" /> <br /><br />
               
               <asp:Button Text="Add Bottle Details"  id="PlantBottle1"  runat="server" class="viewbtn1" OnClick="PlantBottle1_Click"/><br /><br />
               
               
           </div>
          <%--verticle line--%>
        <td class="w-30" style="border-left:3px dashed; border-color:black ">
           
           
               
               
           
           </td>
               <%--Add image --%>
               <td style="width=70%;"> 
                   <section>
                       <br /><br /><br /><br />
                       <h6>  Bottles Details</h6>
                   </section>
                   <br /><br />
                   <div style="width: 90%; margin-left:30px;">
                   <formview style="align-content:flex-start; width:70%;">
                <b>
                <label>Bottle ID&nbsp&nbsp&nbsp&nbsp: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmBottleID" class="auto-style3" runat="server" CssClass="auto-style14" Width="124px"/>
                       <br /><br />

                <label>Date : </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Textbox id="upDate" type="text" runat="server"  class="auto-style10" Width="76px" CssClass="auto-style13" /><br />
                 <asp:Textbox  id="upMonth" type="text" class="auto-style10" runat="server" Width="77px" CssClass="auto-style12" Height="21px" /><br />
                 <asp:Textbox id="upYear" type="text" class="auto-style10" runat="server" Width="77px" CssClass="auto-style15" Height="25px" /> <br /><br />
               
                    
                    <label>Variety Code : </label>&nbsp&nbsp<asp:Textbox id="pdmv" type="text"  class="auto-style5" runat="server" CssClass="auto-style16" Width="132px"/>
                       <br /><br />
                
                    
                    <label>No of plants : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmNoOfPlnt" class="auto-style6" runat="server" CssClass="auto-style9" Width="135px"/>
                       <br /><br />
                
                    <label>operator Code : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmoperators" class="auto-style7" runat="server" CssClass="auto-style8" Width="140px"/>
                       <br /><br />
                
                </b>
                    </formview>
                       
                      <br /><br /><br />
                 
                       </div>
                       <br />
              </td>
          
           </tr>
       
    </table>
        <br /><br /><br /><br /><br />
 </div>
</asp:Content>
