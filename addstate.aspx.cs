using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addstate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request["stid"] != null)
            {
                
                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q1 = "select * from state where stateid=@cat";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@cat", Request["stid"]);
                myconn.Open();
                SqlDataReader res1 = mycomm.ExecuteReader();
                if (res1.HasRows == true)
                {
                    res1.Read();
                    TextBox1.Text = res1["name"].ToString();
                    
                }

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request["stid"] != null)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "update state set name=@name where stateid=@cat";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
         
            mycomm.Parameters.AddWithValue("@cat", Request["stid"].ToString());
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {

                Response.Redirect("addstate.aspx");
            }
            GridView1.DataBind();
            myconn.Close();
        }
        else
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "insert into state values(@name)";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Label1.Text = "State Added successfully";
                GridView1.DataBind();
            }
            myconn.Close();
        }
    }
}