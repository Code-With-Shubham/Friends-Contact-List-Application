using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ForgetPass : System.Web.UI.Page
{
  
    protected void Recover(object sender, EventArgs e)
    {
        string uid, sq, ans, np;

        uid = TextBox1.Text;
        sq = DropDownList1.SelectedValue;
        ans = TextBox2.Text;

        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;

        DBConnector dbc = new DBConnector();
        scon = dbc.GetDBConnection();
        scmd = new SqlCommand("select * from users where userid=@p1 and sq=@p2 and ans=@p3;", scon);
        scmd.Parameters.AddWithValue("p1", uid);
        scmd.Parameters.AddWithValue("p2", sq);
        scmd.Parameters.AddWithValue("p3", ans);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "us");
        sda.Fill(ds, "us");
        if (ds.Tables["us"].Rows.Count > 0)
        {
            //code to recover password
            np = uid.Substring(1, 2) + "&" + DateTime.Now.Second + DateTime.Now.Month;
            Response.Write("your new password is " + np);
            scon.Open();
            scmd = new SqlCommand("update users set pswd=@a where userid=@b;", scon);
            scmd.Parameters.AddWithValue("a", np);
            scmd.Parameters.AddWithValue("b", uid);
            scmd.ExecuteNonQuery();
            scon.Close();
        }
        else
        {
            Response.Write("User identity failed...");
        }
    }
}
