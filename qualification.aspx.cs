using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class qualification : System.Web.UI.Page
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
                String q1 = "select * from qualification where id=@cat";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@cat", Request["id"]);
                myconn.Open();
                SqlDataReader res1 = mycomm.ExecuteReader();
                if (res1.HasRows == true)
                {
                    res1.Read();
                    DropDownList1.SelectedValue = res1["classid"].ToString();
                    TextBox2.Text = res1["name"].ToString();
                    TextBox3.Text = res1["percentage"].ToString();
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
            String q1 = "update qualification set classid=@cls,name=@name, percentage=@per where id=@cat";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@cls", DropDownList1.SelectedValue);
            mycomm.Parameters.AddWithValue("@name", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@per", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@cat", Request["id"].ToString());
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Redirect("qualification.aspx");
                GridView1.DataBind();
            }
           
            myconn.Close();
        }
        else
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "insert into qualification values(@cid,@name,@per,@uname)";
            mycomm = new SqlCommand(q1, myconn);

            mycomm.Parameters.AddWithValue("@name", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@per", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@cid", DropDownList1.SelectedValue.ToString());
            mycomm.Parameters.AddWithValue("@uname", Session["uname"].ToString());

            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Label1.Text = "Qualification Details Added successfully";
                GridView1.DataBind();
            }
            myconn.Close();
        }
    }
}