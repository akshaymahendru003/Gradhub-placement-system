using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addjob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "insert into job values(@title,@email,@phone,@aphone,@state,@city,@address,@jobcat,@about,@req,@salary,@dt,@st,@ad)";
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
        mycomm.Parameters.AddWithValue("@dt", DateTime.Now);
        mycomm.Parameters.AddWithValue("@st", "available");
        mycomm.Parameters.AddWithValue("@ad", Session["uname"]);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            Label1.Text = "Job Posted successfully";
        }
        myconn.Close();
    }
}