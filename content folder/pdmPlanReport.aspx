<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmPlanReport.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmPlanReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content12" ContentPlaceHolderID="pdmContentPlaceHolder12" runat="server">


    <section style="background-color:darkolivegreen; ">
 
        <center>
        <h2>PRODUCTION DEPARTMENT</h2> 
            </center>
         </section>
       <div style=" font-size: xx-large; font-weight: bold; color: #800000; background-color: #008080" align="center">
           Plan Details

       </div>
    <br /><br /><br /><br />

    <div align="center">
        <%--GridLines view--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="plan_id" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="plan_id" HeaderText="plan_id" ReadOnly="True" SortExpression="plan_id" />
            <asp:BoundField DataField="plan_name" HeaderText="plan_name" SortExpression="plan_name" />
            <asp:BoundField DataField="variety_name" HeaderText="variety_name" SortExpression="variety_name" />
            <asp:BoundField DataField="variety_code" HeaderText="variety_code" SortExpression="variety_code" />
            <asp:BoundField DataField="no_of_plants" HeaderText="no_of_plants" SortExpression="no_of_plants" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="first_month" HeaderText="first_month" SortExpression="first_month" />
            <asp:BoundField DataField="second_month" HeaderText="second_month" SortExpression="second_month" />
            <asp:BoundField DataField="third_month" HeaderText="third_month" SortExpression="third_month" />
            <asp:BoundField DataField="fouth_month" HeaderText="fouth_month" SortExpression="fouth_month" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Tissue_Culture_Lab_System.PlanDataSet1TableAdapters.planTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_plan_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="plan_id" Type="String" />
            <asp:Parameter Name="plan_name" Type="String" />
            <asp:Parameter Name="variety_name" Type="String" />
            <asp:Parameter Name="variety_code" Type="String" />
            <asp:Parameter Name="no_of_plants" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="first_month" Type="String" />
            <asp:Parameter Name="second_month" Type="String" />
            <asp:Parameter Name="third_month" Type="String" />
            <asp:Parameter Name="fouth_month" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="plan_name" Type="String" />
            <asp:Parameter Name="variety_name" Type="String" />
            <asp:Parameter Name="variety_code" Type="String" />
            <asp:Parameter Name="no_of_plants" Type="String" />
            <asp:Parameter Name="time" Type="String" />
            <asp:Parameter Name="first_month" Type="String" />
            <asp:Parameter Name="second_month" Type="String" />
            <asp:Parameter Name="third_month" Type="String" />
            <asp:Parameter Name="fouth_month" Type="String" />
            <asp:Parameter Name="Original_plan_id" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    </div>
    <br /><br /><br />
    <center>
     <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Click to print report</a> </button>
    </center>

    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
