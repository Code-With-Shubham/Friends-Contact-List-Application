using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ChangePassword : System.Web.UI.Page
{
  
    protected void Change(object sender, EventArgs e)
    {
            SqlConnection scon;
            SqlCommand scmd;
            string id, curps, newps, confps;
            id = Convert.ToString(Session["userid"]);
            curps = TextBox1.Text;
            newps = TextBox2.Text;
            confps = TextBox3.Text;
            if (newps == confps)
            {
                //change password code
                DBConnector dbc = new DBConnector();
                scon = dbc.GetDBConnection();
                scon.Open();
                scmd = new SqlCommand("update users set pswd=@p1 where userid=@p2 and pswd=@p3;", scon);
                scmd.Parameters.AddWithValue("p1", newps);
                scmd.Parameters.AddWithValue("p2", id);
                scmd.Parameters.AddWithValue("p3", curps);
                int cnt = scmd.ExecuteNonQuery();
                if (cnt > 0)
                {
                    l1.Text = "password changed successfully";
                }

                else
                {
                    l1.Text = "Failed!!!";
                }
                scon.Close();
            }
            else
                l1.Text = "New passwords mismatched";

    }
}
