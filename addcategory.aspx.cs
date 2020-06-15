using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class addcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request["catid"] != null)
            {
                Image1.Visible = true;
                SqlConnection myconn;
                SqlCommand mycomm;
                myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q1 = "select * from category where catid=@cat";
                mycomm = new SqlCommand(q1, myconn);
                mycomm.Parameters.AddWithValue("@cat", Request["catid"]);
                myconn.Open();
                SqlDataReader res1 = mycomm.ExecuteReader();
                if (res1.HasRows == true)
                {
                    res1.Read();
                    TextBox1.Text = res1["name"].ToString();
                    Image1.ImageUrl = "uploads/" + res1["image"].ToString();
                }

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request["catid"] != null)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "update category set name=@name, image=@img where catid=@cat";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
            if (FileUpload1.HasFile)
            {
                mycomm.Parameters.AddWithValue("@img", FileUpload1.FileName);
                FileUpload1.SaveAs(MapPath("uploads/" + FileUpload1.FileName));
            }
            else
            {
                mycomm.Parameters.AddWithValue("@img", Path.GetFileName(Image1.ImageUrl));
            }
            mycomm.Parameters.AddWithValue("@cat", Request["catid"].ToString());
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {

                Response.Redirect("addcategory.aspx");
            }
            GridView1.DataBind();
            myconn.Close();
        }
        else
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q1 = "insert into category values(@name,@img)";
            mycomm = new SqlCommand(q1, myconn);
            mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
            if (FileUpload1.HasFile)
            {
                mycomm.Parameters.AddWithValue("@img", FileUpload1.FileName);
                FileUpload1.SaveAs(MapPath("uploads/" + FileUpload1.FileName));
            }
            else
            {

                mycomm.Parameters.AddWithValue("@img", "default.png");
            }
            myconn.Open();
            int i = mycomm.ExecuteNonQuery();
            if (i == 1)
            {
                Label1.Text = "Category Added successfully";
                GridView1.DataBind();
            }
            myconn.Close();
        }
    }
}