using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class dealer_complaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "get")
        {
            Label complaint_id = (Label)e.Item.FindControl("complaint_idLabel0");
            string datalist_complaint_id = complaint_id.Text;
            int x = Convert.ToInt32(datalist_complaint_id);
            int f = 1;



            TextBox solution = (TextBox)e.Item.FindControl("txt_dealersolution0");
            string datalist_solution = solution.Text;


            string constr = "Data Source=ACER-PC111;Initial Catalog=CBC;Integrated Security=True";

            SqlConnection con = new SqlConnection(constr);
            con.Open();



            string UpdateCmd = " update complaints  set  dealer_solution='" + datalist_solution+ "', flag= '" + f + "' where complaint_id='" + x + "'";

            SqlCommand cmd = new SqlCommand(UpdateCmd, con);

            SqlDataReader dtr = cmd.ExecuteReader();


            con.Close();

            










        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~//Default.aspx");
    }
}