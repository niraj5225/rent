using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Default16 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text =="" && TextBox2.Text =="")
        {
            cmd = new SqlCommand("Update lustab set pwd='" + TextBox1.Text + "' where id='" + Session["s"].ToString() + "' and pwd='" + TextBox3.Text + "'", cn);
            cmd.ExecuteReader();
        }
    }
}