using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangeName : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection scon;
        SqlCommand scmd;
        string id, curnm, newnm, confnm;
        id = Convert.ToString(Session["userid"]);
        curnm = TextBox1.Text;
        newnm = TextBox2.Text;
        confnm = TextBox3.Text;
        if (newnm == confnm)
        {
            //change name code
            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scon.Open();
            scmd = new SqlCommand("update users set nm=@p1 where userid=@p2 and nm=@p3;", scon);
            scmd.Parameters.AddWithValue("p1", newnm);
            scmd.Parameters.AddWithValue("p2", id);
            scmd.Parameters.AddWithValue("p3", curnm);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                Label1.Text = "name changed successfully";
            }

            else
            {
                Label1.Text = "Failed!!!";
            }
            scon.Close();
        }
        else
            Label1.Text = "New name mismatched";


    }
}
