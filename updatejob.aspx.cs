using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class updatejob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q1 = "select * from job where jobid=@un";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@un", Request["jobid"]);
            myconn.Open();
            SqlDataReader res1 = mycomm.ExecuteReader();
            if (res1.HasRows == true)
            {
                res1.Read();
                TextBox1.Text = res1["title"].ToString();
                TextBox2.Text = res1["email"].ToString();
                TextBox3.Text = res1["phoneno"].ToString();
                TextBox4.Text = res1["aphoneno"].ToString();
                TextBox5.Text = res1["requirement"].ToString();
                DropDownList2.SelectedValue = res1["state"].ToString();
                DropDownList3.SelectedValue = res1["city"].ToString();
                TextBox6.Text = res1["address"].ToString();
                DropDownList1.SelectedValue = res1["jobcat"].ToString();
                TextBox9.Text = res1["about"].ToString();
                TextBox7.Text = res1["salary"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "update job set title=@title,email=@email,phoneno=@phone,aphoneno=@aphone,state=@state,city=@city,address=@address,jobcat=@jobcat,about=@about,requirement=@req,salary=@salary where jobid=@job";
        mycomm = new SqlCommand(q1, myconn);

        mycomm.Parameters.AddWithValue("@title", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@email", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@phone", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@aphone", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@state", DropDownList2.SelectedValue.ToString());
        mycomm.Parameters.AddWithValue("@city", DropDownList3.SelectedValue.ToString());
        mycomm.Parameters.AddWithValue("@address", TextBox6.Text);
        mycomm.Parameters.AddWithValue("@jobcat", DropDownList1.SelectedValue.ToString());
        mycomm.Parameters.AddWithValue("@about", TextBox9.Text);
        mycomm.Parameters.AddWithValue("@req", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@salary", TextBox7.Text);
        mycomm.Parameters.AddWithValue("@job", Request["jobid"]);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            Response.Redirect("editjob.aspx");
        }
        myconn.Close();
    }
}