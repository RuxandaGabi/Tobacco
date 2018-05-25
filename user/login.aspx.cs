using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class user_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Facultate\An III\Sem II\WAD\proiect - tabacco final cred\App_Data\tabacodb.mdf;Integrated Security=True");
    int tot = 0;
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        tot = Convert.ToInt32(dt.Rows.Count.ToString());

        if (tot > 0)
        {
            Session["user"] = TextBox1.Text;
            foreach (DataRow dr in dt.Rows)
            {
                Session["user_email"] = dr["email"].ToString();
            }
            Response.Redirect("display_item.aspx");
        }
        else
        {
            TextBox1.Text = "";
            Label1.Text = "Invalid username or password!";
        }



        con.Close();
    }
}