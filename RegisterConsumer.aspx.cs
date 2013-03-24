using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class RegisterConsumer : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }

   


    protected void Button1_Click(object sender, EventArgs e)
    {
       
            string constr = "Data Source=ACER-PC111;Initial Catalog=CBC;Integrated Security=True";

            SqlConnection con = new SqlConnection(constr);
            con.Open();



            string insertcmd = "insert into consumer_details (first_name,last_name,username,password,email,phone_number) values('" + txt_firstname.Text + "','" + txt_lastname.Text + "','" + txt_username.Text + "','" + txt_password.Text + "','" + txt_email.Text + "','" + txt_phoneno.Text + "')";

            SqlCommand cmd = new SqlCommand(insertcmd, con);

            SqlDataReader dtr = cmd.ExecuteReader();
            if (dtr.RecordsAffected > 0)
            {
                Label7.Text = "You are registered successfully,Kindly Log in to continue.";
                HyperLink1.Enabled = true;

            }

            con.Close();

        
    }
}