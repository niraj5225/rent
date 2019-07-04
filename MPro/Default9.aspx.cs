using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default9 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Session["s"].ToString();
        HyperLink2.Text = Session["s"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        int x = TextBox3.Text.Length;
        if ((x < 25) || (x.Equals("")))
        {
            Label3.Text = "Inset atleast 25 words";
        }
        else {
            Label3.Text = "";
            cmd= new SqlCommand("Insert into feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')",cn);
            dr = cmd.ExecuteReader();
            cn.Close();
             Response.Write("<script>alert('Thank you for your Feedback')</script>");
            TextBox1.Text="";
            TextBox2.Text="";
            TextBox3.Text="";
        }

    }
}