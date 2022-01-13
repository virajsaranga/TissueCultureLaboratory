<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmCreatePlan.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmCreatePlan" %>
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

    .creatbtn{
        width:283px;
        margin-left: 133px; 
        background-color:darkorange; 
        height: 53px;
        margin-top: 0

    }
    </style>
</asp:Content>
<asp:Content ID="pdmContent4" ContentPlaceHolderID="pdmContentPlaceHolder4" runat="server">

    <div style=" background-image:url(../Image/bg.jpg);" aria-label="enter code" aria-required="True">
     <%--page title  --%>
    <section style ="background-color:darkslateblue; color:aliceblue">
        <center>
        <h2> Create Plan</h2>
            </center>
    </section>

     <%--table--%>
    <table style="width:80%; margin-left:100px; "  >
       <tr style="border-block-color:black; border-width:10px;background-color:darkgray;">
           <br /><br /><br />
       <td class="w-50">
           <div style="margin-left:40px;">
        <formview style="align-content:flex-start; width:70%;">
                <b>
                <h2> Add Plan details </h2>
                 <br /><br />

                  <%--Form--%>
                <label>Plan ID&nbsp&nbsp&nbsp&nbsp: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmPlanID" runat="server" placeholder="plan id" class="auto-style5"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pdmPlanID" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
               <br /><br />
                <label>Plan Name : </label>&nbsp&nbsp&nbsp<asp:Textbox type="text" id="PdmplanName" runat="server" placeholder="plan name" class="auto-style8" OnTextChanged="PdmplanName_TextChanged" ValidateRequestMode="Enabled"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PdmplanName" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                <label>Variety Name: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmAddVareityNamec" class="auto-style12" placeholder="Variety name" runat="server"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pdmAddVareityNamec" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                <label aria-required="True">Variety code : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmAddVarietyCodec" class="auto-style2" placeholder="Variety code" runat="server"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pdmAddVarietyCodec" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                <label>Num Of plants: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmNumOfPlants" class="auto-style16" placeholder="Num of plants" runat="server"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pdmNumOfPlants" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                <label>Estimate Time: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdmEstimateTime" class="auto-style15" placeholder="estimate time" runat="server"/>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pdmEstimateTime" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
               <br /><br />
                


     
             
            &nbsp;</formview>
               </div>
               </td>
           
         
        <td style="width:50% ;">
            <br /><br />
                <b>
                <label>No of 1st month plants : </label>&nbsp&nbsp<asp:Textbox type="text" id="Pdm1Month" class="auto-style11" placeholder="Num of 1st month" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Pdm1Month" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br /><br />
                <label>No of 2nd month plants: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdm2ndMonth" class="auto-style10" placeholder="Num of 2nd month" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Pdm1Month" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br /><br />
                <label>No of 3rd month plants : </label>&nbsp&nbsp<asp:Textbox type="text" id="pdm3rdMonth" class="auto-style3" placeholder="Num of 3rd month" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="pdm2ndMonth" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br /><br />
                <label>No of 4th month plants: </label>&nbsp&nbsp<asp:Textbox type="text" id="pdm4thmonth" class="auto-style9" placeholder="Num of 4th month" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="pdm4thmonth" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br /><br />
                <b>
            <br />

              <%--buttons --%>
             <asp:Button  class="creatbtn"  id="createbtn1" Text="Create Plane" runat="server" OnClick="createbtn1_Click"  >
               
                  
             </asp:Button>
                 </b><br />
           </td>
           </tr>
    </table>
 <br /><br /><br /><br />


</div>
</asp:Content>
