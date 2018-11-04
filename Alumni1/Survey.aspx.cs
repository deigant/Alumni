using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Survey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string regno = Server.UrlDecode(Request.QueryString["Registration_Number"]);
        //Label3.Text = regno;
        TextBox2.Text = regno;

        string connectionString = WebConfigurationManager.ConnectionStrings["Alumni"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("Select * from Registrations where registration_number=@registration_number", con);

        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@registration_number", TextBox2.Text);

            SqlDataReader dr =  cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = dr["Name"].ToString();
            TextBox3.Text = dr["Company"].ToString();
            con.Close();
        }
        catch (Exception ex) { Label1.Text = ex.ToString(); 
        }
        finally { con.Close(); } 

    }
    protected void Button1_Click(object o,EventArgs args)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["Alumni"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("Insert into Survey values(@registration_number,@name,@company,@place_radio,@place_suggest,@curr_radio,@curr_suggest,@research_radio,@research_suggest,@company_suggest)", con);

        try
        {
            con.Open();
            cmd.Parameters.AddWithValue("@registration_number", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@company", TextBox3.Text);
            cmd.Parameters.AddWithValue("@place_radio", RadioButtonList1.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@place_suggest", TextBox4.Text);

            cmd.Parameters.AddWithValue("@curr_radio", RadioButtonList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@curr_suggest", TextBox5.Text);

            cmd.Parameters.AddWithValue("@research_radio", RadioButtonList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@research_suggest", TextBox6.Text);

           cmd.Parameters.AddWithValue("@company_suggest", TextBox7.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Session["blah"] = TextBox1.Text;
            Response.Redirect("Survey_Confirm.aspx");
        }
        catch(Exception ex) { //Label1.Text = ex.ToString(); 
        }
        finally { con.Close(); }

    }
}