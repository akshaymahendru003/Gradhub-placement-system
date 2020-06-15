using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "insert into contactus values(@name,@email,@subject,@msg)";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text+" "+TextBox2.Text);
            mycomm.Parameters.AddWithValue("@email", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@subject", TextBox4.Text);
            mycomm.Parameters.AddWithValue("@msg", TextBox5.Text);
           
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
              Label1.Text  = "Contact Added successfully";
            }
            myconn.Close();
        
    }
}