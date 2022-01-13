<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.Master" AutoEventWireup="true" CodeBehind="UserSingUp.aspx.cs" Inherits="Tissue_Culture_Lab_System.content_folder.UserSingUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content14" ContentPlaceHolderID="pdmContentPlaceHolder14" runat="server">
     <br /><br /><br /><br />
    <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="../Image/employeePro.jpg"/>
                        </center>
                        
                     </div>
                  </div>
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Employee Login</h3>
                        </center>
                     </div>

                       <br /><br /><br /><br /> <br />
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                       
                        <label >Admin ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                        </div><br />
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                         <br />
                              <center>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                             </center>
                     </div>
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>
    <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br />

</asp:Content>
