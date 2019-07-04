using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Default13 : System.Web.UI.Page
{
    String lid,ladd,rn,rmno,rano,radd,nor;
    int c;
    SqlConnection cn= new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (String.Compare(Session["n"].ToString(),"House")==0)
        {
            Label23.Visible = false;
            Label24.Visible = false;
            TextBox4.Visible = false;
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT house.title,house.id,lustab.id, house.area, house.des, house.amt, house.img1, house.img2, house.img3, house.img4, house.a1, house.a2, house.a3, house.a4, house.a5, lustab.fname, lustab.lname, lustab.mno, lustab.ano FROM house INNER JOIN lustab ON lustab.id = house.id  where house.title='" + Request.QueryString["t1"] + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lid = dr["id"].ToString();
            Label1.Text = dr["title"].ToString();
            Image1.ImageUrl=dr["img1"].ToString();
            Image2.ImageUrl = dr["img2"].ToString();
            Image3.ImageUrl = dr["img3"].ToString();
            Image4.ImageUrl = dr["img4"].ToString();
            Label2.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            Label3.Text = dr["mno"].ToString();
            Label4.Text = dr["ano"].ToString();
            Label5.Text = dr["a1"].ToString();
            Label8.Text = dr["a2"].ToString();
            Label9.Text = dr["a3"].ToString();
            Label10.Text = dr["a4"].ToString(); Label11.Text = dr["a5"].ToString();
            Label12.Text = dr["area"].ToString();
            Label6.Text = dr["des"].ToString();
            Label7.Text = dr["amt"].ToString();
            radd = dr["a1"].ToString() + ", " + dr["a2"].ToString() + ", " + dr["a3"].ToString() + ", " + dr["a4"].ToString() + ", " + dr["a5"].ToString();
            cn.Close(); 
        }
        else if (String.Compare(Session["n"].ToString(), "Room") == 0)
        {
            Label19.Text = "Number of Rooms :";
            Label12.Visible = false;
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT house.title,house.id,lustab.id, house.nor,house.type, house.des, house.amt, house.img1, house.img2, house.img3, house.img4, house.a1, house.a2, house.a3, house.a4, house.a5, lustab.fname, lustab.lname, lustab.mno, lustab.ano FROM room  house INNER JOIN lustab ON lustab.id = house.id  where house.title='" + Request.QueryString["t1"] + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lid = dr["id"].ToString();
            Image1.ImageUrl = dr["img1"].ToString();
            Image2.ImageUrl = dr["img2"].ToString();
            Image3.ImageUrl = dr["img3"].ToString();
            Image4.ImageUrl = dr["img4"].ToString();
            Label1.Text = dr["title"].ToString();
            Label24.Text = dr["type"].ToString();
            Label2.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            Label3.Text = dr["mno"].ToString();
            Label4.Text = dr["ano"].ToString();
            Label5.Text = dr["a1"].ToString();
            Label8.Text = dr["a2"].ToString();
            Label9.Text = dr["a3"].ToString();
            Label10.Text = dr["a4"].ToString(); Label11.Text = dr["a5"].ToString();
            nor = dr["nor"].ToString();
            Label6.Text = dr["des"].ToString();
            Label7.Text = dr["amt"].ToString();
            radd = dr["a1"].ToString() + ", " + dr["a2"].ToString() + ", " + dr["a3"].ToString() + ", " + dr["a4"].ToString() + ", " + dr["a5"].ToString();
            cn.Close(); 
        }
        else if (String.Compare(Session["n"].ToString(), "Hall") == 0)
        {
         
            TextBox4.Visible = false;
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT house.title,house.area,house.id,lustab.id, house.type, house.des, house.amt, house.img1, house.img2, house.img3, house.img4, house.a1, house.a2, house.a3, house.a4, house.a5, lustab.fname, lustab.lname, lustab.mno, lustab.ano FROM hall house INNER JOIN lustab ON lustab.id = house.id  where house.title='" + Request.QueryString["t1"] + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lid = dr["id"].ToString();
            Image1.ImageUrl = dr["img1"].ToString();
            Image2.ImageUrl = dr["img2"].ToString();
            Image3.ImageUrl = dr["img3"].ToString();
            Image4.ImageUrl = dr["img4"].ToString();
            Label1.Text = dr["title"].ToString();
            Label24.Text = dr["type"].ToString();
            Label2.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            Label3.Text = dr["mno"].ToString();
            Label4.Text = dr["ano"].ToString();
            Label5.Text = dr["a1"].ToString();
            Label8.Text = dr["a2"].ToString();
            Label9.Text = dr["a3"].ToString();
            Label10.Text = dr["a4"].ToString();
            Label11.Text = dr["a5"].ToString();
            Label12.Text = dr["area"].ToString();
            Label6.Text = dr["des"].ToString();
            Label7.Text = dr["amt"].ToString();
            radd = dr["a1"].ToString() + ", " + dr["a2"].ToString() + ", " + dr["a3"].ToString() + ", " + dr["a4"].ToString() + ", " + dr["a5"].ToString();
            cn.Close(); 
        }
        else if (String.Compare(Session["n"].ToString(), "Ground") == 0)
        {
            Label23.Visible = false;
            Label24.Visible = false;
            TextBox4.Visible = false;
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT house.title,house.area,house.id,lustab.id, house.des, house.amt, house.img1, house.img2, house.img3, house.img4, house.a1, house.a2, house.a3, house.a4, house.a5, lustab.fname, lustab.lname, lustab.mno, lustab.ano FROM ground house INNER JOIN lustab ON lustab.id = house.id  where house.title='" + Request.QueryString["t1"] + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            lid = dr["id"].ToString();
            Image1.ImageUrl = dr["img1"].ToString();
            Image2.ImageUrl = dr["img2"].ToString();
            Image3.ImageUrl = dr["img3"].ToString();
            Image4.ImageUrl = dr["img4"].ToString();
            Label1.Text = dr["title"].ToString();
            Label2.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            Label3.Text = dr["mno"].ToString();
            Label4.Text = dr["ano"].ToString();
            Label5.Text = dr["a1"].ToString();
            Label8.Text = dr["a2"].ToString();
            Label9.Text = dr["a3"].ToString();
            Label10.Text = dr["a4"].ToString();
            Label11.Text = dr["a5"].ToString();
            Label12.Text = dr["area"].ToString();
            Label6.Text = dr["des"].ToString();
            Label7.Text = dr["amt"].ToString();
            radd = dr["a1"].ToString() + ", " + dr["a2"].ToString() + ", " + dr["a3"].ToString() + ", " + dr["a4"].ToString() + ", " + dr["a5"].ToString();
            cn.Close();
        }
        
         
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("menubar.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("Select * from book", cn);
       SqlDataReader dr = cmd.ExecuteReader();
       if (dr.Read())
       {
           while (dr.Read())
           {

               c = Convert.ToInt32(dr["sno"]);
           }
           c++;
       }
       else
       {
           c = 1;
       }
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("select * from lustab where id='" + Session["s"] + "'", cn);
        dr=cmd.ExecuteReader();
       dr.Read();
       rn = dr["fname"].ToString() + " " + dr["lname"].ToString();
       rmno = dr["mno"].ToString();
       rano = dr["ano"].ToString();
       ladd = dr["a1"].ToString() + ", " + dr["a2"].ToString() + ", " + dr["a3"].ToString() + ", " + dr["a4"].ToString() + ", " + dr["a5"].ToString();
       cn.Close();
       cn.Open();
       cmd = new SqlCommand("Insert into book values('" + c + "','" + lid + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + Label1.Text + "','" + radd + "','" + Label12.Text + "','" + Label6.Text + "','" + System.DateTime.Now.ToString("MM/dd/yyyy") + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + Session["s"].ToString() + "','" + rn + "','" + rmno + "','" + rano + "','" + ladd + "')", cn);
       cmd.ExecuteNonQuery();
       cn.Close(); cn.Open();
       if (String.Compare(Session["n"].ToString(), "House") == 0)
              cmd = new SqlCommand("delete from house where title='" + Request.QueryString["t1"] + "'",cn);
       else if (String.Compare(Session["n"].ToString(), "Room") == 0)
           cmd = new SqlCommand("delete from room where title='" + Request.QueryString["t1"] + "'", cn);
       else if (String.Compare(Session["n"].ToString(), "Hall") == 0)
           cmd = new SqlCommand("delete from hall where title='" + Request.QueryString["t1"] + "'", cn);
       else  
           cmd = new SqlCommand("delete from ground where title='" + Request.QueryString["t1"] + "'", cn);
       cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Default3.aspx?t=" + c);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "" )
        {
            Label22.Text = "*Please insert all data properly";
        }
        else
        {
            if (Session["n"] == "Room")
            {
                if (TextBox4.Text == "")
                    Label22.Text = "*Please insert all data properly";
                else
                {
                    Label22.Text = " ";
                    TextBox1.Text = (Convert.ToInt32(TextBox3.Text) * Convert.ToInt32(Label7.Text) * Convert.ToInt32(TextBox4.Text)).ToString() + "/-";
                    Page.SetFocus(Panel2.ClientID);
                }
            }
            else
            {
                Label22.Text = " ";
                TextBox1.Text = (Convert.ToInt32(TextBox3.Text) * Convert.ToInt32(Label7.Text)).ToString() + "/-";
                Page.SetFocus(Panel2.ClientID);
            }
        }  
    }
}