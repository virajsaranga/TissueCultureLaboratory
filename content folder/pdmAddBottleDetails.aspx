<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmAddBottleDetails.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmAddBottleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 230px;
            margin-left: 27px;
        }
        .auto-style3 {
            width: 230px;
            margin-left: 31px;
        }
        .auto-style4 {
            width: 230px;
            margin-left: 18px;
        }
        .auto-style5 {
            width: 230px;
            margin-left: 40px;
        }
        .auto-style7 {
            width: 103px;
            height: 336px;
        }
            .pdmBottle2 {
             width: 164px;
             margin-left: 158px;
             background-color: darkorange;

        }
        .auto-style13 {
            margin-left: 126px;
        }
        .auto-style14 {
            margin-left: 127px;
        }
        .auto-style15 {
            margin-left: 20px;
        }
        .auto-style16 {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="pdmBottleDetailsContent2" ContentPlaceHolderID="pdmContentPlaceHolder2" runat="server">
      <div style=" background-image:url(../Image/bg.jpg);">
     <%--page title  --%>
    <section style ="background-color:darkslateblue; color:aliceblue">
        <center>
        <h2> Add Bottle Details</h2>
            </center>
    </section>

     <%--table--%>
   <table style="width:90%; margin-left:100px; "  >
       <tr style="background-color:darkgray;border-block-color:black; border-width:10px;">
           <br /><br /><br />
       <td style ="width:60%; ">
           <div style="margin-left:20px; " class="auto-style16">
        <formview style="align-content:flex-start; width:70%;">
                <br>
                <h2> Add bottle details </h2>
                 <br /><br />

                  <%--Form--%>
            <label>Bottle ID&nbsp&nbsp&nbsp&nbsp: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmAdadBottleID" placeholder="Enter Bottle ID" runat="server" class="auto-style5" ValidateRequestMode="Enabled"></asp:Textbox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pdmAdadBottleID" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                
            <label>Date : </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Textbox id="pdmdate" value="" placeholder="Date" type="text"  class="auto-style11" runat="server" CssClass="auto-style15" Width="119px" Height="25px"></asp:Textbox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pdmdate" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="pdmdate" ErrorMessage="*" ForeColor="Red" MaximumValue="31" MinimumValue="1" SetFocusOnError="True" Display="Dynamic">Invalid</asp:RangeValidator>
               <br />
               
            <asp:Textbox type="text" id="pdmmonth"  placeholder="Month" class="auto-style12" runat="server" Width="119px" CssClass="auto-style13" ></asp:Textbox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pdmmonth" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="pdmmonth" Display="Dynamic" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True">Invalid</asp:RangeValidator>
               <br />
               
            <asp:Textbox id="pdmyear" value="" placeholder="Year" type="text" class="auto-style10" runat="server" CssClass="auto-style14" Width="118px" ></asp:Textbox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pdmyear" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
               
            <label>Variety Code : </label>&nbsp&nbsp<asp:Textbox type="text" placeholder="Enter Variety Code" id="pdmAddVareityCode" class="auto-style1" runat="server" ValidateRequestMode="Enabled" ></asp:Textbox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pdmAddVareityCode" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
               
            <label>No of plants : </label>&nbsp&nbsp<asp:Textbox type="text" placeholder="only use digits" id="pdmAddNoOfPlants" class="auto-style3" runat="server" OnTextChanged="pdmAddNoOfPlants_TextChanged" ></asp:Textbox><br /><br />
               
              
                
            <label>operator Code : </label>&nbsp&nbsp<asp:Textbox type="text" placeholder="Enter the code" id="pdmAddoperator" class="auto-style4" runat="server"  ></asp:Textbox>
               <br /><br />
             
           <asp:Button class="pdmBottle2" ID="Btn1" runat="server" OnClick="Btn1_Click"  Text="Submit"/>
             
            &nbsp;</formview>
               </div>
               </td>

         
        <td style="width:25%; border-left:3px dashed; border-color:black">
           
           <div class="auto-style7" style="margin-left:36%;">


           </div>
          
               
           
           </td>
                
               <%--Add image--%>
               <td style="width:30%;">
               <div style="margin-right:60px;">
                   <br />
                <img src="../Image/Add%20palnd%20det.jpg" /><br /><br /><br />
                   <p> A Roux bottle provides a large surface for the cells or microorganisms to grow, whether on the top of,[10] floating in,[11] or at the bottom of the medium.[12] The flat upper face then allows inspection of the culture and even illumina</p>
               </div> 
           </td>
           </tr>
    </table>
 <br /><br /><br /><br />
 </div>
</asp:Content>
