﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_category : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Facultate\An III\Sem II\WAD\proiect - tabacco final cred\App_Data\tabacodb.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }

    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into product_category values('" + t1.Text + "')";
        cmd.ExecuteNonQuery();
        t1.Text = "";

        con.Close();

        Response.Write("<script>alert('product category added successfully');</script>");
    }
}