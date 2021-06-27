using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        string id, ps, typ;
        id = TextBox1.Text;
        ps = TextBox2.Text;
        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;

        DBConnector dc = new DBConnector();
        scon = dc.GetDBConnection();
        scmd = new SqlCommand("select * from users where userid=@a and pswd=@b;", scon);
        scmd.Parameters.AddWithValue("a", id);
        scmd.Parameters.AddWithValue("b", ps);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "us");
        int cnt = ds.Tables["us"].Rows.Count;

        if (cnt > 0)
        {
            Session["userid"] = id;
            typ = Convert.ToString(ds.Tables["us"].Rows[0]["typ"]);
            Session["usertype"] = typ;
            if (typ == "customer")
                Response.Redirect("User.aspx");

            if (typ == "admin")
                Response.Redirect("AdminPanel.aspx");

        }
        else
        {
            Response.Redirect("Failure.aspx");
        }
    }


    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NewReg.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ForgetPass.aspx");
    }

   
}

