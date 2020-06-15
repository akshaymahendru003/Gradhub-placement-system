using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else if (Session["utype"].ToString() != "admin")
        {
            Response.Redirect("index.aspx");
        }
        if (Session["uname"] != null)
        {
            var output = Regex.Replace(Session["name"].ToString().Split()[0], @"[^0-9a-zA-Z\ ]+", "");

            Label1.Text = char.ToUpper(output[0]) + output.Substring(1); ;
        }
        else
        {
            Label1.Text = "Guest";
        }
    }
}
