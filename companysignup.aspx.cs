using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class companysignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "insert into company values(@title,@email,@phone,@aphone,@mname,@state,@city,@address,@logo,@profile,@status,@uname,@pass)";
        mycomm = new SqlCommand(q1, myconn);
        
        mycomm.Parameters.AddWithValue("@title", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@email", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@phone", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@aphone", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@mname", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@state", DropDownList2.SelectedValue.ToString());
        mycomm.Parameters.AddWithValue("@city", DropDownList3.SelectedValue.ToString());
        mycomm.Parameters.AddWithValue("@address", TextBox6.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@logo", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("uploads/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@logo", "default.png");
        }
        mycomm.Parameters.AddWithValue("@profile", TextBox9.Text);
        mycomm.Parameters.AddWithValue("@status", "pending");
        mycomm.Parameters.AddWithValue("@uname", TextBox7.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox8.Text);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            Response.Redirect("login.aspx");
        }
        myconn.Close();
    }
}