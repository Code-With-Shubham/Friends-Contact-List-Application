using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class NewReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void submit(object sender, EventArgs e)
    {
        string id, pswd, nm, mo,email, gn = "", sque, ans;
        int age;

        id = TextBox1.Text;
        pswd = TextBox2.Text;
        nm = TextBox3.Text;
        age = Convert.ToInt32(TextBox4.Text);
        if (RadioButton1.Checked)
            gn = "male";
        else
            gn = "female";
        mo = TextBox5.Text;
        email = TextBox6.Text;
        sque = DropDownList1.SelectedValue;
        ans = TextBox7.Text;

        SqlConnection scon;
        SqlCommand scmd;

        DBConnector dbc = new DBConnector();
        scon = dbc.GetDBConnection();
        scmd = new SqlCommand("insert into users values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10); ", scon);
        scon.Open();


        scmd.Parameters.AddWithValue("p1", id);
        scmd.Parameters.AddWithValue("p2", pswd);
        scmd.Parameters.AddWithValue("p3", nm);
        scmd.Parameters.AddWithValue("p4", "customer");
        scmd.Parameters.AddWithValue("p5", age);
        scmd.Parameters.AddWithValue("p6", gn);
        scmd.Parameters.AddWithValue("p7", mo);
        scmd.Parameters.AddWithValue("p8", email);
        scmd.Parameters.AddWithValue("p9", sque);
        scmd.Parameters.AddWithValue("p10", ans);
        int cnt= scmd.ExecuteNonQuery();
        if(cnt>0)
        {
            Response.Redirect("RegSuccess.aspx");
        }
        scon.Close();
        
    }
}
