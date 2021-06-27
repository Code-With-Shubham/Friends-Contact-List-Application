using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AddFriend : System.Web.UI.Page
{
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fid,fnm, fmo, fadd, ftyp, fbio;
       string id = Convert.ToString(Session["userid"]);
        if (id != "na")
        {
            fnm = TextBox1.Text;
            fmo = TextBox2.Text;
            fadd = TextBox3.Text;
            ftyp = DropDownList1.SelectedValue;
            fbio = TextBox4.Text;

            SqlConnection scon;
            SqlCommand scmd;

            DBConnector dbc = new DBConnector();
            scon = dbc.GetDBConnection();
            scmd = new SqlCommand("insert into friends values(@p1,@p2,@p3,@p4,@p5,@p6); ", scon);
            scon.Open();
            
            scmd.Parameters.AddWithValue("p1", id);
            scmd.Parameters.AddWithValue("p2", fnm);
            scmd.Parameters.AddWithValue("p3", fmo);
            scmd.Parameters.AddWithValue("p4", fadd);
            scmd.Parameters.AddWithValue("p5", ftyp);
            scmd.Parameters.AddWithValue("p6", fbio);
            int cnt = scmd.ExecuteNonQuery();
            scon.Close();
            if (cnt > 0)
                Label1.Text = "Friend Added Successfully";
            else
                Label1.Text = "Registration Failed....";
        }  
    }
}