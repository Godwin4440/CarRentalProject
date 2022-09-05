<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="CarRentalProject.View.Admin.Returns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
     <style>
    body {background-color:lightblue} 
</style> 
   <div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
        <div class="col-md-3"><img src="../../Assets/Img/Yellow.png"  />
            <h3 class="text-warning">Car Returned</h3>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
  <div class="row">
      <div class="col-lg-12">
         
                <form runat="server">
               <div class="col-md-8">
            <asp:GridView runat="server"  ID="ReturnList" Class="table table-hover" AutoGenerateSelectButton="true" >
                <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
            </asp:GridView>
            </div>
        
              </form>
                </div>       
      </div>
  </div>
    
</asp:Content>
