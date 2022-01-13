<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="pdmReportPage.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.pdmReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="pdmContent9" ContentPlaceHolderID="pdmContentPlaceHolder9" runat="server">

     <section style="background-color:darkolivegreen; ">
 
        <center>
        <h2>PRODUCTION DEPARTMENT</h2> 
            </center>
         </section>
       <div style=" font-size: xx-large; font-weight: bold; color: #800000; background-color: #008080" align="center">
           Bottle Details

       </div>
    <br /><br />
    <div align="center">
    <%--    <asp:Button ID="Button1" runat="server" Text="Generate report" BackColor="#FF9933" ForeColor="Black" align="center"/> --%>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="162px" Width="880px" AlternatingRowStyle-BackColor="Orange" BackColor="WindowFrame"  BorderStyle="Double">
           
            <Columns>
                <asp:BoundField DataField="bottle_id" HeaderText="bottle_id" SortExpression="bottle_id" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="variety_code" HeaderText="variety_code" SortExpression="variety_code" />
                <asp:BoundField DataField="no_of_plants" HeaderText="no_of_plants" SortExpression="no_of_plants" />
                <asp:BoundField DataField="code_of_the_operator" HeaderText="code_of_the_operator" SortExpression="code_of_the_operator" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="Tissue_Culture_Lab_System.pdmbottleDatasetTableAdapters.PlantBottlesTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="bottle_id" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="month" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="variety_code" Type="String" />
                <asp:Parameter Name="no_of_plants" Type="String" />
                <asp:Parameter Name="code_of_the_operator" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </div>
    <br /><br />
    <center>
    <button class="btn btn-lg btn-block btn-success"><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Click to print report</a> </button>
        </center>
      <br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br />
</asp:Content>
