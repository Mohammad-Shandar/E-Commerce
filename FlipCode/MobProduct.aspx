<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MobProduct.aspx.cs" Inherits="MobProduct" %>

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
     <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  
    <title>MobProd</title>

    <style>
      .column {
  float: left;
  width: 30%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
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





<%--Prod 1 --%>


        <div class="row" style="height:300px;">
       

            <div class="column" style="background-color:#aaa;">
                <asp:Image ID="Image1"  ImageUrl = "s9.jpg" Width ="100%" Height ="300px" runat="server" />
   
            </div>

  


<div class="column" style="width:70%;background-color:#bbb;">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Buy Now" Font-Size="Larger" BackColor="#009900" ForeColor="White" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Add to Cart" Font-Size="Larger" ForeColor="White" BackColor="#FF6600" OnClick="Button2_Click" />
           


    </div>

    </div>
<hr style="color:black;" />

<%--Prod 2 --%>
  <div class="row" style="height:300px">
       

            <div class="column" style="background-color:#aaa;">
                <asp:Image ID="Image2"  ImageUrl = "O7t.jpg" Width ="100%" Height ="300px"  runat="server" />
   
            </div>

  


<div class="column" style="width:70%;background-color:#bbb;">
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server"  Text="Buy Now" Font-Size="Larger" ForeColor="White" BackColor="#009900" OnClick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Font-Size="Larger" ForeColor="White" BackColor="#FF6600" Text="Add to Cart" OnClick="Button4_Click" />
           


    </div>

    </div>
<hr style="color:black;" />

 <%--Prod 3 --%>

     
       <div class="row" style="height:300px">
       

            <div class="column" style="background-color:#aaa;">
                <asp:Image ID="Image3"  ImageUrl = "ix.jpg" Width ="100%" Height ="300px"  runat="server" />
   
            </div>

  


<div class="column" style="width:70%;background-color:#bbb;">
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server"  Font-Size="Larger" BackColor="#009900" ForeColor="White" Text="Buy Now" OnClick="Button5_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="Add to Cart" Font-Size="Larger" ForeColor="White" BackColor="#FF6600" OnClick="Button6_Click"  />
           


    </div>

    </div>
<hr style="color:black;" />

<%--Prod 4 --%>

  <div class="row" style="height:300px">
       

            <div class="column" style="background-color:#aaa;">
                <asp:Image ID="Image4"  ImageUrl = "R5.jpg" Width ="100%" Height ="300px"  runat="server" />
   
            </div>

  


<div class="column" style="width:70%;background-color:#bbb;">
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button7" runat="server"  Font-Size="Larger" BackColor="#009900" ForeColor="White" Text="Buy Now" OnClick="Button7_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Font-Size="Larger" ForeColor="White" BackColor="#FF6600" Text="Add to Cart" OnClick="Button8_Click" />
           


    </div>

    </div>
<hr style="color:black;" />
<%--=====================================--%>


    </form>
</body>
</html>
