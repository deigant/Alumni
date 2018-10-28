using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Survey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string regno = Server.UrlDecode(Request.QueryString["Registration_Number"]);
        //Label3.Text = regno;
        TextBox2.Text = regno;
    }
}