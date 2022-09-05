<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarRentalProject.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.css" />
</head>
<body>
    <style>
    body {background-color:aliceblue} 
</style>   

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-5">
              <div class="row-mt-5">
                <div class="col"> </div>
                <div class="col">
                    <h3 class="text-danger"> Car Rental System Login Page</h3>
                    <img src="../Assets/Img/Lambergini.png" height="170px" />
                </div>
                  <div class="col"></div>
            </div>
                <form runat="server" >
        <div class="form-group" runat="server">
        <label for="exampleInputEmail">User ID</label>
        <input type="text" class="form-control" id="UserNameTb" area-describedby="emailHelp" placeholder="Enter User Id" runat="server" required="required" />
        <small id="emailHelper" class="form-text text-muted">We'll never share your Id with anyone else.</small>
    </div>
            <div class="form-group">
                <label for="ExampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required" />
            </div>
            <div class="form-group">
                <input type="radio" class="form-check-input" id="RoleCust" name="Role" runat="server" />
                <label class="form-check-label" for="exampleCheck1">Customer</label>
                <input type="radio" class="form-check-input" id="AdminRadio" name="Role" runat="server" />
                <label class="form-check-label" for="exampleCheck1">Admin</label>
            </div>
            <br />
            <div class="form-group d-grid">
                <label id="InfoMsg" runat="server" class="text-danger"></label>
                <asp:Button type="submit" id="SaveBtn" class="btn btn-warnimg btn-block" Text="Login"  runat="server" BackColor="#FF9900" OnClick="SaveBtn_Click1" />
            </div>
       </form>
        </div>
            <div class="col-md-3"></div>
            </div>
              </div>
    New User <asp:HyperLink ID="HyperLink1" NavigateUrl="~/View/Welcome/Register.aspx" runat="server">Register here.</asp:HyperLink>

</body>
</html>
