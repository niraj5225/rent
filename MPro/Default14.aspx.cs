using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Default14 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        cn.Open();
        cmd = new SqlCommand("Select * from house", cn);
        dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("Select * from room", cn);
        dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("Select * from hall", cn);
        dr = cmd.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
        cn.Close();
        cn.Open();
        cmd = new SqlCommand("Select * from ground", cn);
        dr = cmd.ExecuteReader();
        DataList4.DataSource = dr;
        DataList4.DataBind();
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Title")
        Response.Redirect("login.aspx?t2="+e.CommandArgument.ToString()); 

    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Title")
        { Response.Redirect("login.aspx"); }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Title")
        { Response.Redirect("login.aspx"); }
    }
    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Title")
        { Response.Redirect("login.aspx"); }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "All")
        {
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            cn.Open();
            cmd = new SqlCommand("Select * from house", cn);
            dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("Select * from room", cn);
            dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("Select * from hall", cn);
            dr = cmd.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("Select * from ground", cn);
            dr = cmd.ExecuteReader();
            DataList4.DataSource = dr;
            DataList4.DataBind();
            cn.Close();
        }
        else {
            if (DropDownList1.Text == "HOUSE")
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                cn.Open();
                cmd = new SqlCommand("Select * from house", cn);
                dr = cmd.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                cn.Close();
            }
            else if (DropDownList1.Text == "ROOM")
            {
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                cn.Open();
                cmd = new SqlCommand("Select * from room", cn);
                dr = cmd.ExecuteReader();
                DataList2.DataSource = dr;
                DataList2.DataBind();
                cn.Close();
            }
            else if (DropDownList1.Text == "HALL")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
                cn.Open();
                cmd = new SqlCommand("Select * from hall", cn);
                dr = cmd.ExecuteReader();
                DataList3.DataSource = dr;
                DataList3.DataBind();
                cn.Close();
            }
            else if (DropDownList1.Text == "GROUND")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
                cn.Open();
                cmd = new SqlCommand("Select * from ground", cn);
                dr = cmd.ExecuteReader();
                DataList4.DataSource = dr;
                DataList4.DataBind();
                cn.Close();
            }
            
            
         
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int xyz=0;
     
        DataList2.DataSource = "";
        DataList2.DataBind();
        DataList3.DataSource = "";
        DataList3.DataBind();
        DataList4.DataSource = "";
        DataList4.DataBind();
        if (DropDownList1.Text == "All" && TextBox2.Text=="")
        {
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true;
            cn.Open();
            cmd = new SqlCommand("Select * from house", cn);
            dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("Select * from room", cn);
            dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("Select * from hall", cn);
            dr = cmd.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();
            cn.Close();
            cn.Open();
            cmd = new SqlCommand("Select * from ground", cn);
            dr = cmd.ExecuteReader();
            DataList4.DataSource = dr;
            DataList4.DataBind();
            cn.Close();
        }
        else {
            if (DropDownList1.Text == "HOUSE" && TextBox2.Text == "")
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                DataTable dt = new DataTable();
                cn.Open();
                da = new SqlDataAdapter("Select * from house", cn);
                ds = new DataSet();
                da.Fill(ds);
                int colCount = ds.Tables[0].Rows.Count;
                DataTable ta = new DataTable();
                String abc;
                for (int i = 0; i < colCount; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        String s = (ds.Tables[0].Rows[i][j + 9].ToString().ToUpper()).Trim();

                        String l = (TextBox2.Text.ToUpper()).Trim();
                        for (int k = 0, a = 0; k < s.Length; k++)
                        {
                            if (l[a] == s[k] && l.Length <= s.Substring(k).Length)
                            {

                                if (String.Compare(l, (s.Substring(k, l.Length))) == 0)
                                {
                                    abc = "select * from house where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";
                                    xyz++;
                                    cn.Close();
                                    cn.Open();
                                    cmd = new SqlCommand(abc, cn);
                                    dr = cmd.ExecuteReader();
                                    DataList4.DataSource = dr;
                                    DataList4.DataBind();
                                    cn.Close();
                                }
                            }
                        }
                    }
               }
               
            }
            else if (DropDownList1.Text == "ROOM" && TextBox2.Text == "")
            {
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                DataTable dt = new DataTable();
                cn.Open();
                da = new SqlDataAdapter("Select * from ground", cn);
                ds = new DataSet();
                da.Fill(ds);
                int colCount = ds.Tables[0].Rows.Count;
                DataTable ta = new DataTable();
                String abc;
                for (int i = 0; i < colCount; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        String s = (ds.Tables[0].Rows[i][j + 9].ToString().ToUpper()).Trim();

                        String l = (TextBox2.Text.ToUpper()).Trim();
                        for (int k = 0, a = 0; k < s.Length; k++)
                        {
                            if (l[a] == s[k] && l.Length <= s.Substring(k).Length)
                            {

                                if (String.Compare(l, (s.Substring(k, l.Length))) == 0)
                                {
                                    abc = "select * from room where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";

                                    cn.Close();
                                    cn.Open();
                                    cmd = new SqlCommand(abc, cn);
                                    dr = cmd.ExecuteReader();
                                    DataList4.DataSource = dr;
                                    DataList4.DataBind();
                                    cn.Close();
                                }
                            }
                        }
                    }
                }
            }
            else if (DropDownList1.Text == "HALL" && TextBox2.Text == "")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
             DataTable dt = new DataTable();
                cn.Open();
                da = new SqlDataAdapter("Select * from ground", cn);
                ds = new DataSet();
                da.Fill(ds);
                int colCount = ds.Tables[0].Rows.Count;
                DataTable ta = new DataTable();
                String abc;
                for (int i = 0; i < colCount; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        String s = (ds.Tables[0].Rows[i][j + 9].ToString().ToUpper()).Trim();

                        String l = (TextBox2.Text.ToUpper()).Trim();
                        for (int k = 0, a = 0; k < s.Length; k++)
                        {
                            if (l[a] == s[k] && l.Length <= s.Substring(k).Length)
                            {

                                if (String.Compare(l, (s.Substring(k, l.Length))) == 0)
                                {
                                    abc = "select * from hall where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";
                                 
                                    cn.Close();
                                    cn.Open();
                                    cmd = new SqlCommand(abc, cn);
                                    dr = cmd.ExecuteReader();
                                    DataList4.DataSource = dr;
                                    DataList4.DataBind();
                                    cn.Close();
                                }
                               }
                          }
                    }
                }
    
            
            }
            else if (DropDownList1.Text == "GROUND" && TextBox2.Text == "")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
                DataTable dt = new DataTable();
                cn.Open();
                da = new SqlDataAdapter("Select * from ground", cn);
                ds = new DataSet();
                da.Fill(ds);
                int colCount = ds.Tables[0].Rows.Count;
                DataTable ta = new DataTable();
                String abc;
                for (int i = 0; i < colCount; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        String s = (ds.Tables[0].Rows[i][j + 9].ToString().ToUpper()).Trim();

                        String l = (TextBox2.Text.ToUpper()).Trim();
                        for (int k = 0, a = 0; k < s.Length; k++)
                        {
                            if (l[a] == s[k] && l.Length <= s.Substring(k).Length)
                            {

                                if (String.Compare(l, (s.Substring(k, l.Length))) == 0)
                                {
                                    abc = "select * from ground where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";
                                 
                                    cn.Close();
                                    cn.Open();
                                    cmd = new SqlCommand(abc, cn);
                                    dr = cmd.ExecuteReader();
                                    DataList4.DataSource = dr;
                                    DataList4.DataBind();
                                    cn.Close();
                                }
                               }
                          }
                    }
                }
    
            }
            
            
         
        }
    
    }
}