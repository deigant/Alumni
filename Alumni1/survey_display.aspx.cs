using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class survey_display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["admin_survey_select"];
        TextBox2.Text = cookie["registration_number"];

        string connectionString = WebConfigurationManager.ConnectionStrings["Alumni"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("Select * from Survey where registration_number= @registration_number", con);

        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@registration_number",TextBox2.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            int count = 0;
            while (reader.Read())
            {
                count++;
                TextBox1.Text = reader["name"].ToString();
                TextBox3.Text = reader["company"].ToString();
                TextBox8.Text = reader[3].ToString();
                TextBox4.Text = reader["place_suggest"].ToString();
                TextBox9.Text = reader["curr_radio"].ToString();
                TextBox5.Text = reader["curr_suggest"].ToString();
                TextBox10.Text = reader["research_radio"].ToString();
                TextBox6.Text = reader["research_suggest"].ToString();
                TextBox7.Text = reader["company_suggest"].ToString();
            }
            if(count == 0)
            {
                Label13.Visible = true;
            }
            con.Close();
        }
        catch(Exception ex)
        {
            
            //Label1.Text = ex.ToString() + ex.StackTrace;
        }
        finally
        {
            con.Close();
        }


    }
    protected void Button1_Click(object o,EventArgs arg)
    {
        Response.Redirect("Admin_Survey_List.aspx");
    }
}