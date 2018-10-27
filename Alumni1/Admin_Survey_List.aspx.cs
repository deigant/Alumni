using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Survey_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          string cmdText = "Select * from Registrations";
            
          if ((string)Session["filter_registration_number"] != "" || (string)Session["filter_Name"] != "" || (string)Session["filter_Contact"] != "" || (string)Session["filter_Address"] != "" || (string)Session["filter_Year"] != "")
          {
              cmdText += " where";

          }
          else if ((string)Session["filter_Branch"] != "" || (string)Session["filter_Company"] != "" || (string)Session["filter_Email"] != "")
          {
              cmdText += " where";
          }

        string filter_registration_number = (String)Session["filter_registration_number"];
        string filter_Name = (String)Session["filter_Name"];
        string filter_Contact = (String)Session["filter_Contact"];
        string filter_Address = (String)Session["filter_Address"];
        string filter_Year = (String)Session["filter_Year"];
        string filter_Branch = (String)Session["filter_Branch"];
        string filter_Company = (string)Session["filter_Company"];
        string filter_Email = (string)Session["filter_Email"];
        int flag = 0;
          if ((string)Session["filter_Registration_number"] != "")
          {
              cmdText += " registration_number =" +  filter_registration_number;
              flag = 1;

          }
          if ((string)Session["filter_Name"] != "")
          {
            if (flag == 1) cmdText += "and ";
              cmdText += " Name = " + "\'"  + filter_Name + "\'";
            flag = 1;

        }

          if ((string)Session["filter_Contact"] != "")
          {
            if (flag == 1) cmdText += "and ";
            cmdText += " Contact = " + "\'" +  filter_Contact + "\'" ;
            flag = 1;
        }
          if ((string)Session["filter_Address"] != "")
          {
            if (flag == 1) cmdText += "and ";
            cmdText += " Address = " + "\'" +  filter_Address + "\'"  ;
            flag = 1;
        }
          if ((string)Session["filter_Year"] != "")
          {
            if (flag == 1) cmdText += "and ";
            cmdText += " Year = " + "\'" + filter_Year + "\'"  ;
            flag = 1;
        }
          if ((string)Session["filter_Branch"] != "")
          {
            if (flag == 1) cmdText += "and ";
            cmdText += " Branch = " + "\'" + filter_Branch + "\'" ;
            flag = 1;
        }
          if ((string)Session["filter_Company"] != "")
          {
            if (flag == 1) cmdText += "and ";
            cmdText += " Company = " + "\'" + filter_Company + "\'" ;
            flag = 1;
        }
          if ((string)Session["filter_Email"] != "")
          {
            if (flag == 1) cmdText += "and ";
            cmdText += " Email = " + "\'" + filter_Email+ "\'"  ;
            flag = 1;
        }
          

          if(Session["filter_flag"] != null && (int)Session["filter_flag"] == 1)
        {
            try
            {
               // Label2.Text = cmdText;
               SqlDataSource1.SelectCommand = cmdText;
              SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                this.DataBind();
            }
            catch (Exception ex) { Label2.Text = cmdText + " " + ex.ToString(); }
           
        }
        





    }
    protected void Filter_Click(object o, EventArgs e)
    {
        Session["filter_flag"] = 1;
        Session["filter_registration_number"] = TextBox1.Text;
        Session["filter_Name"] = TextBox2.Text;
        Session["filter_Contact"] = TextBox3.Text;
        Session["filter_Address"] = TextBox4.Text;
        Session["filter_Year"] = TextBox5.Text;
        Session["filter_Branch"] = TextBox6.Text;
        Session["filter_Company"] = TextBox7.Text;
        Session["filter_Email"] = TextBox8.Text;

       
        Response.Redirect("Admin_Survey_List.aspx");
    }
}