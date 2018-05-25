using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_user_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Facultate\An III\Sem II\WAD\proiect - tabacco final cred\App_Data\tabacodb.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where username='" + Session["user"].ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            t1.Text = dr["firstname"].ToString();
            t2.Text = dr["lastname"].ToString();
            t3.Text = dr["address"].ToString();
            t4.Text = dr["email"].ToString();
            t5.Text = dr["mobile"].ToString();
            t6.Text = dr["password"].ToString();
        }   

        con.Close();
    }

    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update registration set firstname='"+t1.Text+"',lastname='"+t2.Text+ "',address='" + t3.Text + "',email='" + t4.Text + "',mobile='" + t5.Text + "',password='" + t6.Text + "' where username='"+Session["user"].ToString()+"'";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Write("<script>alert('Updated successfully!');</script>");
    }
}