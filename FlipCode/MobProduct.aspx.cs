using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

public partial class MobProduct : System.Web.UI.Page
{
    string cs= ConfigurationManager.ConnectionStrings["MyKartConnectionString1"].ConnectionString;
    SqlCommand com;
    string str;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection mycon = new SqlConnection(cs);

        ////mycon.Open();

        ////str = "select * from product ";

        ////com = new SqlCommand(str, mycon);

        ////SqlDataReader reader = com.ExecuteReader();





        //=================================
        DataTable dt = new DataTable();
        SqlConnection mycon = new SqlConnection(cs);
        mycon.Open();

        SqlCommand sqlCmd = new SqlCommand("SELECT * from product",mycon);
        SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

        sqlDa.Fill(dt);

        if (dt.Rows.Count > 0)
        {







            //=========================================


            //if (reader.Read())

            {

                //dt.Rows[0]["Name"]
                //byte[] img = reader[Convert.ToBase64String(_byte, 0, _byte.Length)); "img_front"].ToString();

                // Image1.ImageUrl = Image.
                //     Convert.ToBase64String(img);

                // Get your image from database, I hope it is stored in binary format, so it would return a byte array



                //String encodedImage = Base64.encodeToString(byteArrayImage, Base64.DEFAULT);
                //byte[] imagem = (byte[])(reader["img_front"]);
                //    string PROFILE_PIC = Convert.ToBase64String(imagem);
                //    Image3.ImageUrl = String.Format("data:image/jpg;base64,{0}", PROFILE_PIC);


                // Get your image from database, I hope it is stored in binary format, so it would return a byte array







                Label1.Text = dt.Rows[0]["product_name"].ToString();

                Label2.Text = dt.Rows[0]["product_Desc"].ToString();

                Label3.Text = dt.Rows[0]["product_price"].ToString();

               


                Label4.Text = dt.Rows[1]["product_name"].ToString();

                Label5.Text = dt.Rows[1]["product_Desc"].ToString();

                Label6.Text = dt.Rows[1]["product_price"].ToString();

             



                Label7.Text = dt.Rows[2]["product_name"].ToString();

                Label8.Text = dt.Rows[2]["product_Desc"].ToString();

                Label9.Text = dt.Rows[2]["product_price"].ToString();

              




                Label10.Text = dt.Rows[3]["product_name"].ToString();

                Label11.Text = dt.Rows[3]["product_Desc"].ToString();

                Label12.Text = dt.Rows[3]["product_price"].ToString();

              
                //==========================================================

            }
        }
            //reader.Close();

            mycon.Close();



        
    }

 

   

    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["product_price"] = Label3.Text;  //this is used so that it can be used in next page


        Response.Redirect("Order.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["product_price"] = Label6.Text;//this is used so that it can be used in next page

        Response.Redirect("Order.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        Session["product_price"] = Label9.Text;//this is used so that it can be used in next page
        Response.Redirect("Order.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }




    protected void Button7_Click(object sender, EventArgs e)
    {

        Session["product_price"] = Label12.Text;//this is used so that it can be used in next page

        Response.Redirect("Order.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {

    }
}