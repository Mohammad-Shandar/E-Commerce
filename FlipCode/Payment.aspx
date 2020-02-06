<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <h1 style="text-align:center;color:#1558c2">Payment Details</h1>
        <hr />
       
                <div class=" container form-group" style="margin-left:auto;width:500px;" id="pay" >
                    <h3 style="text-align:center;">Card Details:</h3>
                    <hr />
                    <asp:Label ID="Label1" runat="server" Text="Cash On Delivery">

                    </asp:Label><asp:CheckBox ID="CheckBox1"  runat="server" CssClass="offset-1" />
                     <hr />

                    <label class="form-control">Name on Card:</label>
                    <asp:TextBox ID="TextBox8" runat="server"  CssClass="form-control"></asp:TextBox>
                    <br />
                    <label class="form-control">Card Number:</label>
                    <asp:TextBox ID="TextBox9" runat="server"  CssClass="form-control" MaxLength="16" TextMode="Number"></asp:TextBox>
                    <br />
                    <label class="form-control">Card Expiry:</label>
                    <asp:TextBox ID="TextBox10" runat="server"  CssClass="form-control"></asp:TextBox>
                    <br />
                    <label class="form-control" style="width:30%;">Card CVV:</label>
                    <asp:TextBox ID="TextBox11" runat="server"  CssClass="form-control" MaxLength="3" TextMode="Number" style="width:30%;"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Pay" CssClass="btn btn-success"  style="width:100%;" OnClick="Button1_Click"/>
               
               
               
               
                <asp:Label ID="lblMsg" style="padding-left:600px; " text="" Font-Size="X-Large" runat="server" ForeColor="Blue"></asp:Label>
               
               
            </div>
        </div>
    </div>
    </form>
</body>
</html>
