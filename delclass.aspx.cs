﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class delclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q1 = "delete from classes where id=@cat";
        mycomm = new SqlCommand(q1, myconn);
        mycomm.Parameters.AddWithValue("@cat", Request["cid"]);
        myconn.Open();
        int i = mycomm.ExecuteNonQuery();
        if (i == 1)
            Response.Redirect("addclass.aspx");
    }
}