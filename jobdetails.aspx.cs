using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class jobdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q1 = "select title,email,phoneno,aphoneno,state.name as sname,city.name as cname,address,category.name as nm,about,requirement,salary,pubdate from job,state,city,category where jobcat=catid and jobid=@job and cityid=city and stateid=job.state";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@job", Request["jobid"]);
        myconn.Open();
        SqlDataReader res1 = mycomm.ExecuteReader();
        if (res1.HasRows == true)
        {
            Label1.Text = "result nor found";
            res1.Read();
            //Image1.ImageUrl = "uploads/" + res1["logo"];
            Label9.Text = res1["title"].ToString();
            Label10.Text = res1["about"].ToString();
            Label3.Text = res1["email"].ToString();
            Label4.Text = res1["phoneno"].ToString();
            Label5.Text = res1["aphoneno"].ToString();
            Label8.Text = res1["salary"].ToString();
            Label6.Text = res1["pubdate"].ToString();
            Label7.Text = res1["address"].ToString() + "<br/> " + res1["cname"] + "," + res1["sname"];
            Label1.Text = res1["requirement"].ToString();
            Label2.Text = res1["nm"].ToString();
            Label1.Text = "result nor found";
        }
        else
        {
            Label1.Text = "result nor found";
        }
    }
}