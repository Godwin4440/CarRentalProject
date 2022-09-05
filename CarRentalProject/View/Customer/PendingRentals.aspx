<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PendingRentals.aspx.cs" Inherits="CarRentalProject.View.Customer.PendingRentals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-1"></div>
            <div class="col">
                <h2 class="text-warning">Your Pending Rentals</h2>
            </div>
          <div class="col"></div>
        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8"></div>
            <form runat="server">
                <div class="col-md-8">
                    <asp:GridView runat="server" ID="CarList" Class="table table-hover">
                        <AlternatingRowStyle BackColor="#FFCC00" ForeColor="White" />
                    </asp:GridView>
                </div>
            </form>
            <div class="col-lg-8"></div>

        </div>
    </div>
</asp:Content>

