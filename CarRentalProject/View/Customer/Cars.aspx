<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CarRentalProject.View.Customer.Cars" %>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <style>
    body {background-color:beige} 
</style>   

    <div class="Container-fluid">
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-2">
                <label id="CustName" runat="server">xxxxx</label>
            </div>
            </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 ml-5"><img src="../../Assets/Img/MarutiSuzuki.png" height="150" /></div>
        <div class="col-md-4">
        </div>

    </div>
            
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col">
            <form runat="server">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8"><h3 class="text-warning">Available Cars</h3></div>

                </div>
                <div class="col-md-8">

                    <asp:GridView runat="server" ID="CarList" Class="table table-hover" AutoGenerateSelectButton="True"  >
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
                    </asp:GridView>

                </div>
                <div class="row">
                    <div class="col-4">
                    <div class="form-group">
                           <input type="date" class="form-control" id="ReturnDate" placeholder="password" runat="server" required="required" />
                       </div>
                    </div>
                    <div class="col-4">
                    <div class="form-group d-grid">
                       <label id="InfoMsg" runat="server" class="text-danger"></label>
                       <asp:Button type="submit" id="BookBtn" class="btn btn-warning btn-block" Text="Book" runat="server" OnClick="BookBtn_Click"/>
                       </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    
</asp:Content>
