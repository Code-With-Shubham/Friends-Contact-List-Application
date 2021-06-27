using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Setting : System.Web.UI.Page
{
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EditProfile.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("LoggedOut.aspx");
    }

    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Session["userid"] = "na";
        Response.Redirect("Default.aspx");
    }
}