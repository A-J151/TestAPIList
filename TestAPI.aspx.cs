using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestAPI : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPost_Click(object sender, EventArgs e)
    {

    }
    protected void linkGet_Click(object sender, EventArgs e)
    {
        GETPet.Visible = true;
        GETCust.Visible = false;
        PostPet.Visible = false;
    }
    protected void linkPost_Click(object sender, EventArgs e)
    {
        GETPet.Visible = false;
        GETCust.Visible = false;
        PostPet.Visible = true;

    }
    protected void linkCust_Click(object sender, EventArgs e)
    {
        GETPet.Visible = false;
        GETCust.Visible = true;
        PostPet.Visible = false;
    }
}