using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Panel3.Visible = true;
        Panel2.Visible = false;
        Panel1.Visible = false;
        Panel4.Visible = false;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Panel4.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
    }
}