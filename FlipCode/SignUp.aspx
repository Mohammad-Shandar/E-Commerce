<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
         integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>



<style>

    #signup
    {
        margin-top:20px;
        margin-left:600px;
        /*margin:auto;*/
        /*align-items:center;*/
    }

    .form-group
    {
        width:30%;
        /*margin-left:200px;*/
    }

  
   
  
</style>
    

    <title>Sign Up</title>
</head>

<body>
    <form id="form1" runat="server">

    <div >
   <nav  class="navbar navbar-expand-lg navbar-warning bg-dark">
  <a class="navbar-brand" href="#">MyKart</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
        </div>
      <input class="form-control mr-sm-2" type="search" placeholder="Search for Products" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </div>
</nav>
    </div>

<%--/////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>


     <div id="signup">
                <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    <br />
            <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                             
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
 ControlToValidate="firstname" ErrorMessage="This is the Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                             
            <br />
                </div>

            <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                <br />
            <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
            <br />
                </div>

                <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Mobile Number"></asp:Label>
                    <br />
            <asp:TextBox ID="mobno" runat="server" TextMode="Phone"></asp:TextBox>
            <br />
                </div>

                <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email ID"></asp:Label>
                    <br />
            <asp:TextBox ID="emailid" runat="server" TextMode="Email"></asp:TextBox>
            <br />
                </div>
                 <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                     <br />
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
                </div>

                <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="TextBox6" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                </div>

                <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                    <br />
            <asp:TextBox ID="address" runat="server"></asp:TextBox>
            <br />
                </div>

                <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Pin Code"></asp:Label>
                    <br />
            <asp:TextBox ID="pincode" runat="server" TextMode="Number"></asp:TextBox>
            <br />
                </div>
                                        
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
  
      

    </form>



    </form>
</body>
</html>
