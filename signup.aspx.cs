using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection myconn;
        SqlCommand mycomm;
        if (TextBox3.Text == TextBox4.Text)
        {
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "select * from signup where email=@em";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@em", TextBox2.Text);
          
            myconn.Open();
            SqlDataReader res1 = mycomm.ExecuteReader();
            if (res1.HasRows == true)
            {
                Label1.Text = "User Alredy Exist";
                myconn.Close();
            }
            else
            {
                myconn.Close();
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                q1 = "insert into signup values(@name,@email,@password,@utype)";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
                mycomm.Parameters.AddWithValue("@email", TextBox2.Text);
                mycomm.Parameters.AddWithValue("@password", TextBox3.Text);
                mycomm.Parameters.AddWithValue("@utype", "user");
                myconn.Open();
                int i = mycomm.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Redirect("login.aspx");
                }
                myconn.Close();
            }

               
        }
        else
        {
            Label1.Text = "Password mismatch";
        }
    }
   
}