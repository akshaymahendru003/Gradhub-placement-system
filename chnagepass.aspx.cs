using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class chnagepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "select * from signup where email=@em and password=@pass and utype='admin'";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@em", Session["uname"]);
            mycomm.Parameters.AddWithValue("@pass", TextBox1.Text);
            myconn.Open();
            SqlDataReader res1 = mycomm.ExecuteReader();
            
            if (res1.HasRows == true)
            {
                myconn.Close();
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q2 = "update signup set password=@pass where email=@em and password=@cpass and utype='admin'";
                mycomm = new SqlCommand(q2, myconn);
                mycomm.Parameters.AddWithValue("@pass", TextBox2.Text);
                mycomm.Parameters.AddWithValue("@em", Session["uname"]);
                mycomm.Parameters.AddWithValue("@cpass", TextBox1.Text);
                myconn.Open();
                int i = mycomm.ExecuteNonQuery();
                if (i == 1)
                {

                    Label1.Text = "Password Changed Successfully";
                }
                myconn.Close();
            }
            else
            {
                Label1.Text = "Current Password is wrong";
            }
            myconn.Close();
        }
        else
        {
            Label1.Text = "New Password and Confirm Password are not matched";
        }
       
    }
}