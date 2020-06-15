using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class serachjob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String state, city, title;
        state = DropDownList2.SelectedValue;
        city = DropDownList3.SelectedValue;
        title = TextBox6.Text;
        Response.Redirect("searchjobdetails.aspx?state=" + state + "&city=" + city + "&title=" + title);
    }
}