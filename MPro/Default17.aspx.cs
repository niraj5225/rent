using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default17 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Other")
        { Panel2.Visible = true; }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.Text == "Other")
        { Panel3.Visible = true; }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        if(DropDownList1.Text == "Other" && DropDownList2.Text =="Other")
        {
                if (TextBox6.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox7.Text != "" && TextBox5.Text !="")
            {
                cmd = new SqlCommand("Insert into donate values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for your contribution. We will contact you soon...')</script>");
                cn.Close();
                Response.Write("<script>location.href='Default17.aspx';</script>");
                }
            else
                Response.Write("<script>alert('Please fill all the data')</script>");
        }

        else if (DropDownList1.Text == "Other" && DropDownList2.Text !="Other"  )
        {
            if (TextBox6.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox7.Text != "" && DropDownList2.Text != "--------Select any--------")
            {
                cmd = new SqlCommand("Insert into donate values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + DropDownList2.Text + "','" + TextBox6.Text + "')", cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for your contribution. We will contact you soon...')</script>");

                cn.Close();
                Response.Write("<script>location.href='Default17.aspx';</script>");
            }
            else
                Response.Write("<script>alert('Please fill all the data')</script>");
        }
        else if (DropDownList1.Text != "Other" && DropDownList2.Text == "Other")
        {
            if (TextBox6.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox5.Text != "" && TextBox7.Text != "" && DropDownList1.Text != "--------Select any--------")
            {
                cmd = new SqlCommand("Insert into donate values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for your contribution. We will contact you soon...')</script>");
                cn.Close();
                Response.Write("<script>location.href='Default17.aspx';</script>");
            }
            else
                Response.Write("<script>alert('Please fill all the data')</script>");
        }
        else
        {
            if (TextBox6.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && DropDownList1.Text != "--------Select any--------" && TextBox7.Text != "" && DropDownList2.Text != "--------Select any--------")
            {
                cmd = new SqlCommand("Insert into donate values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox6.Text + "')", cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for your contribution. We will contact you soon...')</script>");
                cn.Close();
                Response.Write("<script>location.href='Default17.aspx';</script>");
            }
            else
                Response.Write("<script>alert('Please fill all the data')</script>");
        }
    }
}