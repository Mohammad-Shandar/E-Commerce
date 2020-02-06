<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>

     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
         integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

      <script src='https://kit.fontawesome.com/a076d05399.js'></script>

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





</head>
<body>
    <form id="form1" runat="server">
  
  
  <%--For NAVIGATION--%>

  <div>
    
      
   <nav  class="navbar navbar-expand-lg navbar-warning bg-dark">
       
  <a class="navbar-brand" href="Home.aspx">MyKart</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

    <asp:TextBox ID="TextBox1"  class="form-control mr-sm-2 " style="width:40%;" type="search" placeholder="Search for Products" runat="server"></asp:TextBox>
    <%--  <input class=" form-control mr-sm-2 " type="search" placeholder="Search for Products"  aria-label="Search">--%>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
       

       
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="padding-left:30%;">
      

     
      <li class="nav-item dropdown" >
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Electronics.aspx">Electronics</a>
          <a class="dropdown-item" href="Men.aspx">Men</a>
            <a class="dropdown-item" href="Women.aspx">Women</a>
            <a class="dropdown-item" href="Furniture.aspx">Home and Furniture</a>
            <a class="dropdown-item" href="Sports.aspx">Sports</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Others</a>
        </div>
     
    
          <li class="nav-item " style="padding-left:50%" >
        <i class='fas fa-shopping-cart' style='font-size:35px;color:red'></i>
             </li>
              
           <li class="nav-item "  style="padding-left:5%" >
           <a  href="Cart.aspx"  style="color:red;">Cart</a>
               </li>
          </ul>
      

      
 </div>
</nav>
</div>

   
<%--========================================================================================--%>
     <div  class="row" style="height:100%;"  >
        
         <div class="column" style="background-color:#1361bf;width:70%;">
            <h1 align="center">Delivery Address</h1>
             <br />
             <br />   
              <asp:Label ID="Label2" style="margin-left:100px;font-size:x-large" runat="server" Text="Address" ForeColor="#FF6600"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server" style="margin-left:82px" placeholder="Enter Delivery Address" Width="700px" Height="66px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="margin-left:300px;" runat="server" ErrorMessage="Required Field" ForeColor="#66FF66" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
             <br />
             <br />
              <asp:Label ID="Label9" style="margin-left:100px;font-size:x-large" runat="server" Text="Mobile No." ForeColor="#FF6600"></asp:Label>
             <asp:TextBox ID="TextBox4" runat="server" style="margin-left:50px" placeholder="Enter Phone Number" Width="700px" Height="66px" TextMode="Number" MaxLength="10"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="margin-left:300px;" ErrorMessage="Required Field" ForeColor="#66FF66"  ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
             <br />
             <br />
              <asp:Label ID="Label1" style="margin-left:100px;font-size:x-large" runat="server" Text="PinCode" ForeColor="#FF6600"></asp:Label>
             <asp:TextBox ID="TextBox3" style="margin-left:80px" placeholder="Enter Pincode" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ErrorMessage="Required Field" ControlToValidate="TextBox3" ForeColor="#66FF66"></asp:RequiredFieldValidator>
              <br />
             <br />
             <asp:Button ID="Button1" style="margin-left:400px;width:200px;" runat="server" Text="Deliver Here" BackColor="#66FF33" OnClick="Button1_Click" />
         </div>
        

         <div class="column" style="width:30%;">
              <h1 align="center">Price Details</h1>
             <hr style="color:black;" />

             <asp:Label ID="Label3" runat="server" style="margin-left:50px;font-size:larger;"  Text="Price(1 item)"></asp:Label>
             <asp:Label ID="Label4" runat="server"  style="margin-left:85px;font-size:larger;color:#0b1bc8" Text="Label"></asp:Label>
             <br />
             <br />

             <asp:Label ID="Label5" runat="server" style="margin-left:50px;font-size:larger;" Text="Delivery Charges"></asp:Label>

             <asp:Label ID="Label6" runat="server" style="margin-left:50px;font-size:larger;color:#78db15" Text="Free"></asp:Label>

             <br />
             <br />
                          <hr style="color:black;" />

             <asp:Label ID="Label7" runat="server" style="margin-left:50px;font-size:larger;" Text="Amount Payable"></asp:Label>
             <asp:Label ID="Label8" runat="server" style="margin-left:50px;font-size:xx-large;color:red;" Text="Label"></asp:Label>


         </div>
        
          
    
    </div>


    </form>
</body>
</html>
