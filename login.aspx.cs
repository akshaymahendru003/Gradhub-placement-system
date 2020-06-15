using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from signup where email=@un and password=@pass";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox6.Text);
        myconn.Open();
        SqlDataReader res = mycomm.ExecuteReader();
        if (res.HasRows == true)
        {
            res.Read();
            Session["uname"] = res["email"];
            Session["name"] = res["name"];
            Session["utype"] = res["utype"];
            if (res["utype"].ToString() == "admin")
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Redirect("userhome.aspx");
            }
            myconn.Close();

        }
        else
        {
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q1 = "select * from company where username=@un and password=@pass";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@un", TextBox5.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox6.Text);
            myconn.Open();
            SqlDataReader res1 = mycomm.ExecuteReader();
            if (res1.HasRows == true)
            {
                res1.Read();
                if (res1["status"].ToString() == "pending")
                {
                    lb.Text = "Your profile confirmation is pending now. please login after sometime";
                }
                else if (res1["status"].ToString() == "cancel")
                {
                    lb.Text = "Your profile is canceled by admin due to some reson please contact to admin";
                }
                else
                {
                    Session["uname"] = res1["username"];
                    Session["name"] = res1["title"];
                    Session["utype"] = "company";
                    Response.Redirect("companyhome.aspx");
                    myconn.Close();
                }

            }
            else
            {
                lb.Text = "Wrong Username/Password";
            }
        }
    }
}