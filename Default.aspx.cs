using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    public bool Authenticate(String uname, string upass, string tablename)
    {
        bool AuthStatus = false;



        SqlConnection con = new SqlConnection("Data Source=ACER-PC111;Initial Catalog=CBC;Integrated Security=True");

        con.Open();

        SqlCommand com = new SqlCommand("select * from " + tablename + " where username='" + uname + "'and password='" + upass + "'", con);

        SqlDataReader dtr = com.ExecuteReader();

        if (dtr.HasRows)
        {
            AuthStatus = true;
            con.Close();



        }
        return AuthStatus;


    }




    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {


        bool x = Authenticate(txt_dealer_uname.Text, txt_dealer_pass.Text, "dealer_details");

        if (x)
        {
            Session["dealer_username"] = txt_dealer_uname.Text;

            Response.Redirect("dealer/addproducts.aspx");
        }

        else
        {
            Label5.Text = "Invalid Login";

        }

       
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        bool x = Authenticate(txt_consumer_uname.Text, txt_consumer_pass.Text, "consumer_details");

        if (x)
        {
            Session["consumer_username"] = txt_consumer_uname.Text;

            Response.Redirect("consumer/bookcomplaints.aspx");
        }

        else
        {
            Label5.Text = "Invalid Login";

        }
    }
}