using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Default15 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        cn.Open();
        cmd= new SqlCommand("Select * from lustab where id='" + Session["s"] + "'",cn);
        dr=cmd.ExecuteReader();
        dr.Read();
        TextBox1.Text=dr["fname"].ToString();
        TextBox6.Text=dr["lname"].ToString();
        DateTime As = Convert.ToDateTime(dr["DOB"].ToString());
        TextBox2.Text = String.Format("{0:dd-MM-yyyy}", As);
        
        TextBox3.Text=dr["mno"].ToString();
        TextBox4.Text=dr["ano"].ToString();
        TextBox5.Text=dr["a1"].ToString();
        TextBox7.Text=dr["a2"].ToString();
        TextBox8.Text=dr["a3"].ToString();
        TextBox9.Text=dr["a4"].ToString();
        TextBox10.Text=dr["a5"].ToString();
        cn.Close();
    }

protected void  ImageButton1_Click(object sender, ImageClickEventArgs e)
{
    Response.Redirect("menubar.aspx");
}
protected void Button3_Click(object sender, EventArgs e)
{
    Response.Redirect("Default15.aspx");
}
protected void Button4_Click(object sender, EventArgs e)
{
    Response.Redirect("Default16.aspx");
}
protected void TextBox11_TextChanged(object sender, EventArgs e)
{

}

}