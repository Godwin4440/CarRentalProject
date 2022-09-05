<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CarRentalProject.View.Admin.Cars" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
     <style>
    body {background-color:cornsilk} 
</style> 
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
           <div class="row">
               <div class="col"></div>
               <h3 class="text-danger pl-4">Manage Cars</h3>

               <div class="col"><img src="../../Assets/Img/pexels-mike-b-2365572.jpg" height="130px" /></div>
                 <div class="col"></div>
           </div>
                <div class="row">
                    <div class="col">
                       <form runat="server">
                        <div class="form-group">
                      <label for="exampleInputEmail1">Licence Number</label>
                  <input type="text" class="form-control" id="LNumberTb" placeholder="Enter Plate Number" runat="server">
                  </div>
                   <div class="form-group">
                      <label for="exampleInputEmail1">Brand</label>
                  <input type="text" class="form-control" id="BrandTb" placeholder="The Car's Brand" runat="server">
                  </div>
                   <div class="form-group">
                      <label for="exampleInputEmail1">Model</label>
                  <input type="text" class="form-control" id="ModelTb" placeholder="Enter Model" runat="server">
                  </div>
                   <div class="form-group">
                      <label for="exampleInputEmail1">Price</label>
                  <input type="text" class="form-control" id="PriceTb" placeholder="Enter PriceTb" runat="server">
                  </div>
                             <div class="form-group">
                      <label for="exampleInputEmail1">Color</label>
                  <input type="text" class="form-control" id="ColorTb" placeholder="Enter Color" runat="server">
                  </div>
                     <div class="form-group">
                      <label for="exampleInputEmail1">Available</label>
                        <asp:DropDownList ID="AvailableCb" runat="server" Class="form-control">
                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Booked</asp:ListItem>

                        </asp:DropDownList>
                               
                  </div>
                 <br />
                   
                         <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
                         <asp:Button type="submit" id="EditBtn" class="btn btn-danger" Text="Edit" runat="server" OnClick="EditBtn_Click" />
                         <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Save" runat="server" OnClick="SaveBtn_Click" />
                         <asp:Button type="submit" id="DeleteBtn" class="btn btn-danger" Text="Delete" runat="server" OnClick="DeleteBtn_Click" />


              </form>
                    </div>
                </div>

            </div>
            <div class="col-md-8">
                <h1>Cars List</h1>
                <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CarList_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
                </asp:GridView>

                
            </div>
        </div>
    </div>
</asp:Content>
