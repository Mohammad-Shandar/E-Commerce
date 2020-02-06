<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Electronics.aspx.cs" Inherits="Electronics" %>

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
    <title>Electronics</title>
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
        .box
        {
        width:100%;
        height:300px;
        border:solid;
        border-color:darkgray;
        }
    </style>

</head>
<body >
    <form id="form1" runat="server">
    <div>
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
      <%--  <a class="nav-link" href="#">Link</a>--%>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Electronics</a>
          <a class="dropdown-item" href="#">Men</a>
            <a class="dropdown-item" href="#">Women</a>
            <a class="dropdown-item" href="#">Home and Furniture</a>
            <a class="dropdown-item" href="#">Sports</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Others</a>
        </div>
     
    </div>
      <%-- <asp:TextBox ID="TextBox1" class=" " type="search" placeholder="Search for Products" runat="server"></asp:TextBox>--%>
      <input class=" form-control mr-sm-2 " type="search" placeholder="Search for Products"  <%--aria-label="Search--%>>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
       </nav>
    </div>

<%--======================================================================================================--%>
<div class="row" >

        <div class="box col-md-6">
            <div style="display:block;">
                
                    <div style="height:200px;width:80%;text-align:center;">
                        <asp:ImageButton ID="ImageButton1" src="Mobiles.jpg" style="height:220px;width:80%;padding-left: 120px;" runat="server" OnClick="ImageButton1_Click" />
                        <%--<img src="Mobiles.jpg" style="height:220px;width:80%;padding-left: 120px;" />--%>
                      <%--  <a title="Mobiles" style="color:inherit" href="#"></a>--%>
                            <br />
                        <br />
                        <asp:HyperLink ID="HyperLink2"  font-size="x-large" style="color:sandybrown;padding-left:120px;"  NavigateUrl="MobProduct.aspx" runat="server">MOBILES</asp:HyperLink>
                    </div>
                

            </div>

        </div>

        <div class="box col-md-6"">

            <div style="display:block;">
                
                    <div style="height:200px;width:80%;text-align:center;">
                        <asp:ImageButton ID="ImageButton2" src="laptops.jpg"  style="height:220px;width:80%;padding-left: 120px;" runat="server" OnClick="ImageButton2_Click" />
                       <%-- <img src="laptops.jpg" style="height:220px;width:80%;padding-left: 120px;" />--%>
                     <%--   <a title="Mobiles" style="color:inherit" href="#"></a>--%>
                             <br />
                        <br />
                        <asp:HyperLink ID="HyperLink3" font-size="x-large" style="color:sandybrown;padding-left:120px;"   NavigateUrl="MobProduct.aspx" runat="server">LAPTOPS</asp:HyperLink>
                    </div>
                

            </div>

         </div>

       <div class="box col-md-6"">

           <div style="display:block;">
                
                    <div style="height:200px;width:80%;text-align:center;">
                        <asp:ImageButton ID="ImageButton3" src="cameras.jpg" style="height:220px;width:100%;padding-left: 120px;" runat="server" OnClick="ImageButton3_Click" />

                       <%-- <img src="cameras.jpg" style="height:220px;width:100%;padding-left: 120px;" />--%>
                       <%-- <a title="Mobiles" style="color:inherit" href="#"></a>--%>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" font-size="x-large" style="color:sandybrown;padding-left:120px;" NavigateUrl="MobProduct.aspx" runat="server">CAMERA</asp:HyperLink>
                    </div>
                

            </div>
        </div>

      <div class="box col-md-6"">

          <div style="display:block;">
                
                    <div style="height:200px;width:80%;text-align:center;">
                        <asp:ImageButton ID="ImageButton4" src="tablets.jpg" style="height:220px;width:80%;padding-left: 120px;" runat="server" OnClick="ImageButton4_Click" />

                       <%-- <img src="tablets.jpg" style="height:220px;width:80%;padding-left: 120px;" />--%>
                       <%-- <a title="Mobiles" style="color:inherit" href="#"></a>--%>
                             <br />
                        <br />
                        <asp:HyperLink ID="HyperLink4" font-size="x-large" style="color:sandybrown;padding-left:120px;"  NavigateUrl="MobProduct.aspx" runat="server">TABLET</asp:HyperLink>
                    </div>
                

            </div>
     </div>


</div>
    </form>
</body>
</html>
