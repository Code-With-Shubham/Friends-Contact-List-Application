using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangeUserid : System.Web.UI.Page
{
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection scon;
        SqlCommand scmd;
        string id, curid, newid, confid;
        id = Convert.ToString(Session["userid"]);
        curid = TextBox1.Text;
        newid = TextBox2.Text;
        confid = TextBox3.Text;
        if (newid == confid)
        {
            //change userID code
            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scon.Open();
            scmd = new SqlCommand("update users set userid=@p1 where userid=@p2 and userid=@p3;", scon);
            scmd.Parameters.AddWithValue("p1", newid);
            scmd.Parameters.AddWithValue("p2", id);
            scmd.Parameters.AddWithValue("p3", curid);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                Label1.Text = "userID changed successfully";
            }

            else
            {
                Label1.Text = "Failed!!!";
            }
            scon.Close();
        }
        else
            Label1.Text = "New userID mismatched";

    }
}
