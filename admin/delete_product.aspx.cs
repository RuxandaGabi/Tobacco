using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_delete_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Facultate\An III\Sem II\WAD\proiect - tabacco final cred\App_Data\tabacodb.mdf;Integrated Security=True");
    string product;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }

        product = Request.QueryString["product"].ToString();
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from product where product_name='" + product.ToString() + "'";
        cmd.ExecuteNonQuery();


        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "delete from product where product_name='" + product.ToString() + "'";
        cmd1.ExecuteNonQuery();

        con.Close();

        Response.Redirect("display_product.aspx");
    }
}