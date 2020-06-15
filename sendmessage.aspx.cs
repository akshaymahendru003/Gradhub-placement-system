using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class sendmessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "insert into message values(@jobid,@uname,@status,@message)";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@jobid", Request["applyfor"]);
        mycomm.Parameters.AddWithValue("@uname", Request["uname"]);
        mycomm.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@message", TextBox1.Text);

        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
        {
            lb.Text = "Message Send successfully";
        }
        myconn.Close();
    }
}