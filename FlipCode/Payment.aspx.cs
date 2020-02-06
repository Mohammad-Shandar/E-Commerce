using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Payment : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["MyKartConnectionString1"].ConnectionString;
    SqlCommand com;
    string str;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        lblMsg.Text = "Order placed Successfully";
    }
}