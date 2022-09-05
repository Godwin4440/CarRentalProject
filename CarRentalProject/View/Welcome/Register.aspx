<%@ Page Title="" Language="C#" MasterPageFile="~/View/Welcome/Welcome.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarRentalProject.View.Welcome.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mybody" runat="server">
<style>
    body {background-color:antiquewhite} 
</style>   
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
           <div class="row">
               <div class="col"></div>
               <h3 class="text-danger pl-4">Register</h3>
               <div class="col"><img src="../../Assets/Img/Register.png" height="130px" /></div>
                 <div class="col"></div>
           </div>
                <div class="row">
                    <div class="col">
                       <form runat="server">
                        <div class="form-group">
                      <label for="exampleInputEmail1">Customer Name</label>
                  <input type="text" class="form-control" id="CustomerNameTb" placeholder="Enter Customer Name" runat="server" required="required">
                  </div>
                   <div class="form-group">
                      <label for="exampleInputEmail1">Customer Address</label>
                  <input type="text" class="form-control" id="AddTb" placeholder="Enter Customer's Address" runat="server">
                  </div>
                   <div class="form-group">
                      <label for="exampleInputEmail1">Customer Phone</label>
                  <input type="text" class="form-control" id="PhoneTb" placeholder="Enter Phone" runat="server">
                  </div>
                           <div class="form-group">
                      <label for="exampleInputEmail1">Customer Password</label>
                  <input type="text" class="form-control" id="PasswordTb" placeholder="Enter Password" runat="server" required="required">

                  </div>

                 

                      <br />
                      
   
                         <label id="ErrorMsg" runat="server" class="text-danger"></label><br />
                         <asp:Button type="submit" id="SaveBtn" class="btn btn-danger" Text="Register" runat="server"  OnClick="SaveBtn_Click" />



</form>
                    </div>
                </div>

            </div>
           
        </div>
    </div>
                  
Already Registered <asp:HyperLink ID="HyperLink1" NavigateUrl="~/View/Login.aspx" runat="server">Login here.</asp:HyperLink>

      </asp:Content>

