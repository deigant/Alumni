using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class survey_display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["admin_survey_select"];
        TextBox2.Text = cookie["registration_number"];
        //Label1.Text = cookie["registration_number"];

    }
    protected void Button1_Click(object o,EventArgs arg)
    {
        Response.Redirect("Admin_Survey_List.aspx");
    }
}