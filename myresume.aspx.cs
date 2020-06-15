using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class myresume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q1 = "select personal_details.name,email,phoneno,aphoneno,state.name as sname,city.name as cname,address,about,objective,pic,resume from personal_details,state,city where uname=@un and cityid=city and stateid=personal_details.state";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@un", Session["uname"].ToString());
        myconn.Open();
        SqlDataReader res1 = mycomm.ExecuteReader();
        if (res1.HasRows == true)
        {
            res1.Read();
            Image1.ImageUrl = "uploads/" + res1["pic"];
            Label1.Text = res1["about"].ToString();
            Label2.Text = res1["name"].ToString();
            Label3.Text = res1["email"].ToString();
            Label4.Text = res1["phoneno"].ToString();
            Label5.Text = res1["aphoneno"].ToString();
            Label6.Text = res1["objective"].ToString();
            Label7.Text = res1["address"].ToString() + "<br/> " + res1["cname"] + "," + res1["sname"];
        }
    }
}