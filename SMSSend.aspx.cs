using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SohamSMS;

public partial class SMSSend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendMsg(object sender, EventArgs e)
    {
        try
        {
            string mob = txtmobile.Text.Trim();
            string msg = txtmsg.Text;

            SendSMS sms = new SendSMS();
            if (sms.SMSsent(mob, msg))
                Response.Redirect("Success.aspx");

        }
        catch (Exception ex) { }
    }
}