<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="PdmViewBottle.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.PdmViewBottle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 63%;
    }
    .auto-style2 {
        width: 74%;
    }
    .auto-style3 {
        width: 220px;
        margin-left: 21px;
    }
    .auto-style5 {
        width: 222px;
        margin-left: 7px;
    }
    .auto-style6 {
        width: 223px;
        margin-left: 14px;
    }
    .auto-style7 {
        width: 221px;
        margin-left: 0px;
    }
        .auto-style10 {
            width: 65px;
            margin-left: 10px;
            height: 25px;
        }
        .auto-style11 {
            width: 50px;
            margin-left: 10px;
            height: 21px;
        }
        .pdmb1{
            background-color:darkorange;
            width: 73px; 
            margin-left: 157px;
        }

        .pdmb2{
            background-color:coral; 
            width: 67px; 
            margin-left: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="pdmContent2" ContentPlaceHolderID="pdmContentPlaceHolder1" runat="server">
     
    <div  style=" background-image:url(../Image/bg.jpg);">
    <%--page title  --%>
    <section style ="background-color:darkslateblue; color:aliceblue;">
        <center>
        <h2> View bottle details</h2>
            </center>
    </section>

     <%-- table  --%>
   <table style="width:90%; margin-left:100px;"  >
       <tr style="background-color:darkgray">
           <br /><br /><br />
       <td style="width:60;" class="auto-style2">
           <div style="margin-left:20px; width:80%;" >
        <formview style="align-content:flex-start; width:70%;">
                <b>
                <label>Bottle ID&nbsp&nbsp&nbsp&nbsp: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmBottleID" class="auto-style3" runat="server"/><br /><br />
                <label>Date : </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Textbox id="upDate" type="text" runat="server"  class="auto-style10"/> <asp:Textbox  id="upMonth" type="text" class="auto-style10" runat="server" /><asp:Textbox id="upYear" type="text" class="auto-style10" runat="server" /> <br /><br />
                <label>Variety Code : </label>&nbsp&nbsp<asp:Textbox id="pdmv" type="text"  class="auto-style5" runat="server" MaxLength="5" OnTextChanged="pdmv_TextChanged" ValidateRequestMode="Enabled" ViewStateMode="Enabled"/><br /><br />
                <label>No of plants : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmNoOfPlnt" class="auto-style6" runat="server"/><br /><br />
                <label>operator Code : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmoperators" class="auto-style7" runat="server"/><br /><br />
                <asp:Button Text="Update" class="pdmb1" ID="up1"  runat="server" OnClick="up1_Click" /><asp:Button clss="pdmb2" Text="Delete" ID="del1" OnClick="del1_Click" runat="server"/> <br /><br />
                </b>
                    </formview>
        </div>
           <td>

          <%-- verticle line--%>
        <td style="width:25; border-left:3px dashed; border-color:black" class="auto-style1">
            
           
               
           </td>
               <%--bottle image--%>
               
               <td style="width:30%; ">
               
                   <div style="margin-right:80px;">
              <br />
               <img src="../Image/download.jpg" /><br />
                    <%--description--%>
                   <p> A Roux bottle provides a large surface for the cells or microorganisms to grow, whether on the top of,[10] floating in,[11] or at the bottom of the medium.[12] The flat upper face then allows inspection of the culture and even illumination for photosynthetic organisms.[11] Organisms growing at the bottom of the medium can also be inspected from below, with an inverted microscope.[13]</p>
                </div>
           </td>
           </tr>
    </table>
 <br /><br /><br /><br />
        </div>
</asp:Content>
