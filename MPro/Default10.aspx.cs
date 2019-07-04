using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Default10 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Session["s"].ToString();
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox5.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || !FileUpload1.HasFile || !FileUpload2.HasFile || !FileUpload3.HasFile || !FileUpload4.HasFile || TextBox16.Text == "" || TextBox17.Text == "" || TextBox18.Text == "" || TextBox19.Text == "" || TextBox20.Text == "")
        {
            Label1.Text = "Please innput all the data";
        }
        else
        {
            String pic1, pic2, pic3, pic4;
            cn.Open();
            pic1 = "~/post/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(pic1));

            pic2 = "~/post/" + FileUpload2.FileName;
            FileUpload2.SaveAs(MapPath(pic2));

            pic3 = "~/post/" + FileUpload3.FileName;
            FileUpload3.SaveAs(MapPath(pic3));

            pic4 = "~/post/" + FileUpload4.FileName;
            FileUpload4.SaveAs(MapPath(pic4));

            cmd = new SqlCommand("Insert into ground values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + pic1 + "','" + pic2 + "','" + pic3 + "','" + pic4 + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<Script>alert('Thank you for joining us')</Script>");
            Response.Write("<Script>location.href = 'menubar.aspx';</Script>");
        }
    }
}