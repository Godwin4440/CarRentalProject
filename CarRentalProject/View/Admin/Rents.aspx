<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="CarRentalProject.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <style>
    body {background-color:lightgray} 
</style>   

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
            <div class="col"></div>
                    <div class="col-8">
                        <h3 class="text-danger pl-4">Rented Cars</h3>
                        <img src="../../Assets/Img/Rented.png" height="150px" /></div>
                    <div class="row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-9">
                            <form runat="server">
           <asp:GridView runat="server" ID="RentList" Class="table table-hover" AutoGenerateSelectButton="true">
            <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
        </asp:GridView>
          <div class="form-group">
           <input type="text" class="form-control" id="DelayTb"  runat="server">
          <label class="form-check-label" for="exampleCheck1">Delay</label>
      <input type="text" class="form-control" id="FineTb"  runat="server">
      <label class="form-check-label" for="exampleCheck1">Fine</label>
  </div>
                              
 <div class="form-group d-grid">
  <label id="InfoMsg" runat="server" class="text-danger"></label>
  <asp:Button type="submit" id="SaveBtn" class="btn btn-danger btn-block" Text="Return"  runat="server" OnClick="SaveBtn_Click1" />
    </div>
                
        </form>
                                </div>
                        </div>                        
                    </div>
            
                </div>
            </div>
</asp:Content>
