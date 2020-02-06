using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;        //it was giving error,so include this line "ValidationMode requires a ScriptResourceMapping for 'jquery'. Please add a ScriptResourceMapping named jquery(case-sensitive)."
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs;
        cs = ConfigurationManager.ConnectionStrings["MyKartConnectionString1"].ConnectionString;
        using (SqlConnection mycon = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("insert into customer(first_name,last_name,mob_no,pass_word,email_id,addrs,pincode)values('" + firstname.Text + "','" + lastname.Text + "','" + mobno.Text + "','" + password.Text + "','"+emailid.Text+"','" + address.Text + "','" + pincode.Text + "')", mycon);
            mycon.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Successfully Rsegistered";
            Response.Redirect("LogIn.aspx");
        }
    }

        

    
}