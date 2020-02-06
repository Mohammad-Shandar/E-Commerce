<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Men.aspx.cs" Inherits="Men" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>




<%--=========================================== BLOCK    ===========================================================--%>
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
