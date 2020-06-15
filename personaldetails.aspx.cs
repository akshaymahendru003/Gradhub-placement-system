using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class personaldetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
       if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "select * from personal_details where uname=@uname";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@uname", Session["uname"].ToString());
            myconn.Open();
            SqlDataReader res1 = mycomm.ExecuteReader();
            if (res1.HasRows == true)
            {
                Image1.Visible = true;
                res1.Read();
                TextBox1.Text = res1["name"].ToString();
                TextBox2.Text = res1["email"].ToString();
                TextBox3.Text = res1["phoneno"].ToString();
                TextBox4.Text = res1["aphoneno"].ToString();
                DropDownList2.SelectedValue = res1["state"].ToString();
                DropDownList3.SelectedValue = res1["city"].ToString();
                TextBox6.Text = res1["address"].ToString();
                Image1.ImageUrl = "uploads/" + res1["pic"];
                TextBox9.Text = res1["about"].ToString();
                TextBox5.Text = res1["objective"].ToString();
                LinkButton1.PostBackUrl = "uploads/" + res1["resume"];
            }
            myconn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            String type = FileUpload2.PostedFile.ContentType;
            if (type == "application/vnd.openxmlformats-officedocument.wordprocessingml.document" || type == "application/pdf")
            {
                String img;
                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q2 = "select * from personal_details where uname=@uname";
                mycomm = new SqlCommand(q2, myconn);
                mycomm.Parameters.AddWithValue("@uname", Session["uname"].ToString());
                myconn.Open();
                SqlDataReader res1 = mycomm.ExecuteReader();
                if (res1.HasRows)
                {
                    res1.Read();
                    img = res1["pic"].ToString();
                    myconn.Close();
                    myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    q2 = "delete from personal_details where uname=@uname";
                    mycomm = new SqlCommand(q2, myconn);
                    mycomm.Parameters.AddWithValue("@uname", Session["uname"].ToString());
                    myconn.Open();
                    mycomm.ExecuteNonQuery();

                }
                else
                {
                    img = "default.png";
                }
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q1 = "insert into personal_details values(@name,@email,@phone,@aphone,@state,@city,@address,@about,@objective,@pic,@uname,@resume)";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
                mycomm.Parameters.AddWithValue("@email", TextBox2.Text);
                mycomm.Parameters.AddWithValue("@phone", TextBox3.Text);
                mycomm.Parameters.AddWithValue("@aphone", TextBox4.Text);
                mycomm.Parameters.AddWithValue("@state", DropDownList2.SelectedValue.ToString());
                mycomm.Parameters.AddWithValue("@city", DropDownList3.SelectedValue.ToString());
                mycomm.Parameters.AddWithValue("@address", TextBox6.Text);
                if (FileUpload1.HasFile)
                {
                    mycomm.Parameters.AddWithValue("@pic", FileUpload1.FileName);
                    FileUpload1.SaveAs(MapPath("uploads/" + FileUpload1.FileName));
                }
                else
                {
                    mycomm.Parameters.AddWithValue("@pic", img);
                }
                if (FileUpload2.HasFile)
                {

                    mycomm.Parameters.AddWithValue("@resume", FileUpload2.FileName);
                    FileUpload2.SaveAs(MapPath("uploads/" + FileUpload2.FileName));
                }
                else
                {
                    mycomm.Parameters.AddWithValue("@resume", "default.png");
                }
                mycomm.Parameters.AddWithValue("@about", TextBox9.Text);
                mycomm.Parameters.AddWithValue("@objective", TextBox5.Text);
                mycomm.Parameters.AddWithValue("@uname", Session["uname"].ToString());
                myconn.Open();
                int i = mycomm.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Redirect("myresume.aspx");
                }
                myconn.Close();
                
            }
            else
            {
                Label1.Text = "Please upload only pdf and doc file";
            }
        }
       
    }
}