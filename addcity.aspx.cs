using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addcity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request["cid"] != null)
            {

                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q1 = "select * from city where cityid=@cat";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@cat", Request["cid"]);
                myconn.Open();
                SqlDataReader res1 = mycomm.ExecuteReader();
                if (res1.HasRows == true)
                {
                    res1.Read();
                    DropDownList1.SelectedValue = res1["state"].ToString();
                    TextBox1.Text = res1["name"].ToString();

                }

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request["cid"] != null)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "update city set state=@state,name=@name where cityid=@cat";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@state", DropDownList1.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@cat", Request["cid"].ToString());
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {

                Response.Redirect("addcity.aspx");
            }
            GridView1.DataBind();
            myconn.Close();
        }
        else
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "insert into city values(@state,@name)";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@state", DropDownList1.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Label1.Text = "City Added successfully";
                GridView1.DataBind();
            }
            myconn.Close();
        }
    }
}