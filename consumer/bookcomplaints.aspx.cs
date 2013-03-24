using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class consumer_bookcomplaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string consumer_username = Session["consumer_username"].ToString();
       
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "get")
        {
            string consumer_username = Session["consumer_username"].ToString();
            TextBox complaint = (TextBox)e.Item.FindControl("txt_complaintbox");
            string datalist_complaint = complaint.Text;

            Label category = (Label)e.Item.FindControl("product_categoryLabel0");
            string datalist_category = category.Text;

            Label brand = (Label)e.Item.FindControl("product_brandLabel0");
            string datalist_brand = brand.Text;

            Label name = (Label)e.Item.FindControl("product_nameLabel0");
            string datalist_name = name.Text;

            Label price = (Label)e.Item.FindControl("product_priceLabel0");
            string datalist_price = price.Text;

            Label dealerusername = (Label)e.Item.FindControl("dealer_usernameLabel0");
            string datalist_dealerusername = dealerusername.Text;

            Label image = (Label)e.Item.FindControl("product_imageLabel0");
            string datalist_image = image.Text;


            try
            {

                string constr = "Data Source=ACER-PC111;Initial Catalog=CBC;Integrated Security=True";

                SqlConnection con = new SqlConnection(constr);
                con.Open();



                string insertcmd = "insert into complaints (dealer_username,consumer_username,consumer_complaint,product_brand,product_name,product_price,product_category,product_image) values('" + datalist_dealerusername + "','" + consumer_username + "','" + datalist_complaint + "','" + datalist_brand + "','" + datalist_name + "','" + datalist_price + "','" + datalist_category + "','" + datalist_image + "')";

                SqlCommand cmd = new SqlCommand(insertcmd, con);

                SqlDataReader dtr = cmd.ExecuteReader();


                con.Close();

            }
            catch (SqlException ex )
            {
            }



        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~//Default.aspx");
    }
}