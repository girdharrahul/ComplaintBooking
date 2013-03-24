using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class dealer_addproducts : System.Web.UI.Page
{





    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {


        try
        {


            string dealer_username = Session["dealer_username"].ToString();
            string constr = "Data Source=ACER-PC111;Initial Catalog=CBC;Integrated Security=True";

            SqlConnection con = new SqlConnection(constr);
            con.Open();



            string insertcmd = "insert into product_details (dealer_username,shop_name,product_category,product_brand,product_name,product_price,product_image) values('" + dealer_username + "','" + dd_shopname.SelectedItem.Text + "','" + dd_product_category.SelectedItem.Text + "','" + dd_productbrand.SelectedItem.Text + "','" + txt_product_name.Text + "','" + txt_product_price.Text + "','" + imagepath.Text+ "')";

            SqlCommand cmd = new SqlCommand(insertcmd, con);

            SqlDataReader dtr = cmd.ExecuteReader();


            con.Close();

            Label1.Text = "Product Added!";

        }


        catch (NullReferenceException nx)
        {

        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~//Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUploadControl.HasFile)
        {
            try
            {
                if (FileUploadControl.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUploadControl.PostedFile.ContentLength < 102400)
                    {
                        string filename = Path.GetFileName(FileUploadControl.FileName);
                        FileUploadControl.SaveAs(Server.MapPath("~/ProductImages/") + filename);
                        StatusLabel.Text = "Upload status: File uploaded!";
                        imagepath.Text = "~/ProductImages/" + filename;
                    }
                    else
                        StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
                }
                else
                    StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
            }
            catch (Exception ex)
            {
                StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }
}

