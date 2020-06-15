using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q1 = "select * from company where username=@un";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@un", Session["uname"]);
            myconn.Open();
            SqlDataReader res1 = mycomm.ExecuteReader();
            if (res1.HasRows == true)
            {
                res1.Read();
                TextBox1.Text = res1["title"].ToString();
                TextBox2.Text = res1["email"].ToString();
                TextBox3.Text = res1["phone"].ToString();
                TextBox4.Text = res1["aphoneno"].ToString();
                TextBox5.Text = res1["managename"].ToString();
                DropDownList2.SelectedValue = res1["state"].ToString();
                DropDownList3.SelectedValue = res1["city"].ToString();
                TextBox6.Text = res1["address"].ToString();
                Image1.ImageUrl = "uploads/" + res1["logo"].ToString();
                TextBox9.Text = res1["companyprofile"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "update company set title=@title,email=@email,phone=@phone,aphoneno=@aphone,managename=@mname,state=@state,city=@city,address=@address,logo=@logo,companyprofile=@profile where username=@uname";
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
            mycomm.Parameters.AddWithValue("@logo", Path.GetFileName(Image1.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@profile", TextBox9.Text);
        mycomm.Parameters.AddWithValue("@uname", Session["uname"]);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            Response.Redirect("companyprofile.aspx");
        }
        myconn.Close();
    }
}