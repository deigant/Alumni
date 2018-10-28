using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string psw = TextBox2.Text;
        if(username == "admin" && psw == "root")
        {
            Label3.Text = "";
            Response.Redirect("Admin_Survey_List.aspx");
        }
        else
        {
            Label3.Text = "Incorrect Username/ Password!";
        }
    }
}