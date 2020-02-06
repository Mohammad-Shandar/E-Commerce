using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Orders : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["MyKartConnectionString1"].ConnectionString;
    SqlCommand com;
    string str;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        //SqlConnection mycon = new SqlConnection(cs);

        //mycon.Open();
   
        Label4.Text = Session["product_price"].ToString();
        Label8.Text = Session["product_price"].ToString();

    

        //DataTable dt = new DataTable();
        //SqlConnection mycon = new SqlConnection(cs);
        //mycon.Open();

        //SqlCommand sqlCmd = new SqlCommand("SELECT * from product", mycon);
        //SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

        //sqlDa.Fill(dt);

        //if (dt.Rows.Count>0)
        //{




        ////    str = "select * from product ";

        ////com = new SqlCommand(str, mycon);


        ////SqlDataReader dr = com.ExecuteReader();

        ////while (dr.Read())
        ////{

        //    for(int i=0;i<4;i++)
        //    {


        //    Label4.Text = dt.Rows[i]["product_price"].ToString(); //I get error here 
        //    Label8.Text = dt.Rows[i]["product_price"].ToString();
        //    }
        //}
        ////dr.Close();
        //mycon.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection mycon = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into Bill(del_adrs,pincode,order_amt,mob_no)values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + Label8.Text + "','" + TextBox4.Text + "')", mycon);
            mycon.Open();

            cmd.ExecuteNonQuery();
            
            Response.Redirect("Payment.aspx");
        }

    }
}