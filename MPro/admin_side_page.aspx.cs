using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_side_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView6_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            GridView Head = (GridView)sender;
            GridViewRow h = new GridViewRow(2,2, DataControlRowType.Header, DataControlRowState.Insert);
            TableCell t = new TableCell();
            t.Text = "";
            t.ColumnSpan = 2;
            h.Cells.Add(t);
            t = new TableCell();
                t.Text = "Lender";
            t.ColumnSpan = 3;
            h.Cells.Add(t);
            t = new TableCell();
            t.Text = "Renter";
            t.ColumnSpan = 4;
            h.Cells.Add(t);
            t = new TableCell();
            t.Text = "";
            t.ColumnSpan = 7;
            h.Cells.Add(t);
            GridView6.Controls[0].Controls.AddAt(0, h);
        }
    }
}