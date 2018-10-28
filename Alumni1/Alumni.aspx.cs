using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Alumni : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            //Label2.BackColor = Color.FromArgb(0, Color.Black);
      

    }

    protected void Button1_Click(object o,EventArgs e)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["Alumni"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        string cmdText = "Insert into Registrations values(@registration_number,@Name,@Contact,@Address,@Year,@Branch,@Company,@Email)";
        SqlCommand cmd = new SqlCommand(cmdText,con);
        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@registration_number", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Contact", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox2.Text);

            cmd.Parameters.AddWithValue("@Year", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Branch", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Company", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox8.Text);

            cmd.ExecuteNonQuery();
            con.Close();


        }
        catch(Exception ex)
        {
            Label10.Text = ex.ToString();
            Console.WriteLine("Exception");
        }

        string url = "Survey.aspx?";
        url += "Registration_Number=" + Server.UrlEncode(TextBox4.Text);
        Response.Redirect(url);
    }
}