using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class RegisterDealer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Version vs = Environment.Version;
        Response.Write(vs.ToString());

        Label12.Text = vs.ToString();
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = "Data Source=ACER-PC111;Initial Catalog=CBC;Integrated Security=True";

        SqlConnection con = new SqlConnection(constr);
        con.Open();


        string pc = dd_productcat.SelectedItem.Text;
        string ci = dd_circle.SelectedItem.Text;
        string bn = dd_brandname.SelectedItem.Text;
        string insertcmd = "insert into dealer_details (first_name,last_name,username,password,email,product_category,brand_name,circle,shop_name,phone_number) values('" + txt_firstname.Text + "','" + txt_lastname.Text + "','" + txt_username.Text + "','" + txt_password.Text + "','" + txt_email.Text + "','" + pc + "','" + bn + "','" + ci + "','" + txt_shopname.Text + "','" + txt_phoneno.Text + "')";

        SqlCommand cmd = new SqlCommand(insertcmd,con);

        SqlDataReader dtr = cmd.ExecuteReader();
        if(dtr.RecordsAffected>0)
        {
            Label12.Text = "You are registered successfully,Kindly Log in to continue.";
        }
 
            con.Close();

        
    }
   
}