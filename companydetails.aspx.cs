using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class companydetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["st"] != null)
        {
            Button1.Visible = false;
            Button2.Visible = false;
        }
        else
        {
            Button3.Visible = false;
        }
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q1 = "select title,email,phone,aphoneno,managename,state.name as sname,city.name as cname,address,logo,companyprofile from company,state,city where username=@un and cityid=city and stateid=company.state";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@un", Request["uname"]);
        myconn.Open();
        SqlDataReader res1 = mycomm.ExecuteReader();
        if (res1.HasRows == true)
        {
            res1.Read();
            Image1.ImageUrl = "uploads/" + res1["logo"];
            Label2.Text = res1["title"].ToString();
            Label3.Text = res1["email"].ToString();
            Label4.Text = res1["phone"].ToString();
            Label5.Text = res1["aphoneno"].ToString();
            Label6.Text = res1["managename"].ToString();
            Label7.Text = res1["address"].ToString() + "<br/> " + res1["cname"] + "," + res1["sname"];
            Label1.Text = res1["companyprofile"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q1 = "update company set status='cancel' where username=@un";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@un", Request["uname"]);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            Label8.Text = "Company's Account Canceled successfully ";
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
        }

        myconn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q1 = "update company set status='confirm' where username=@un";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@un", Request["uname"]);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            Label8.Text = "Company's Account confirm successfully ";
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = false;
        }

        myconn.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewjob.aspx?companyuname="+Request["uname"]);
    }
}