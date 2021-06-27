using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ChangeMono : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlCommand scmd;
        string id, curmono, newmono, confmono;
        id = Convert.ToString(Session["userid"]);
        curmono = TextBox1.Text;
        newmono = TextBox2.Text;
        confmono = TextBox3.Text;
        if (newmono == confmono)
        {
            //change name code
            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scon.Open();
            scmd = new SqlCommand("update users set mono=@p1 where userid=@p2 and mono=@p3;", scon);
            scmd.Parameters.AddWithValue("p1", newmono);
            scmd.Parameters.AddWithValue("p2", id);
            scmd.Parameters.AddWithValue("p3", curmono);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                Label1.Text = "mobile number changed successfully";
            }

            else
            {
                Label1.Text = "Failed!!!";
            }
            scon.Close();
        }
        else
            Label1.Text = "New mobile number mismatched";

    }
}