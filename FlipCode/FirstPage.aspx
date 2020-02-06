<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
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
              
           <li class="nav-item "  style="margin-left:20%" >
           <a  href="Cart.aspx"  style="color:red;">Cart</a>
               </li>
          </ul>
      

      
 </div>
</nav>
</div>

   
<%--========================================================================================--%>

      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="C1.png" alt="First slide"  width="100px" height="300px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="C2.jpg" alt="Second slide" width="100px" height="300px">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="C3.jpg" alt="Third slide" width="100px" height="300px">
    </div>
      
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
<%--===============================================================================================================--%>


   
    </form>
</body>
</html>
