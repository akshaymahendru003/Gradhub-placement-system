using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addsubcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "insert into subcategory values(@catid,@name,@img)";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@catid", DropDownList1.SelectedValue.ToString());
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
            Label1.Text = "Subcategory Added successfully";
        }
        myconn.Close();
    }
}