using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class exper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request["id"] != null)
            {

                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q1 = "select * from experience where id=@cat";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@cat", Request["id"]);
                myconn.Open();
                SqlDataReader res1 = mycomm.ExecuteReader();
                if (res1.HasRows == true)
                {
                    res1.Read();
                    TextBox1.Text = res1["cname"].ToString();
                    TextBox2.Text = res1["phone"].ToString();
                    TextBox6.Text = res1["address"].ToString();
                    TextBox3.Text = res1["experience"].ToString();
                    DropDownList2.SelectedValue = res1["state"].ToString();
                    DropDownList3.SelectedValue = res1["city"].ToString();
                }

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request["id"] != null)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "update experience set cname=@cname,phone=@phone,state=@state,city=@city,address=@address,experience=@exp where id=@cat";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@phone", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@state", DropDownList2.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@city", DropDownList3.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@address", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@exp", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@cat", Request["id"].ToString());
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Redirect("exper.aspx");
                GridView1.DataBind();
            }

            myconn.Close();
        }
        else
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "insert into experience values(@cname,@phone,@state,@city,@address,@experience,@uname)";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@phone", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@state", DropDownList2.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@city", DropDownList3.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@address", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@experience", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@uname", Session["uname"].ToString());
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Label1.Text = "Details Added successfully";
                GridView1.DataBind();
            }
            myconn.Close();
        }
    }
}