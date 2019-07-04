using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class New : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataSource1.SelectCommand = "Select * from house";
        SqlDataSource2.SelectCommand = "Select * from room";
        SqlDataSource3.SelectCommand = "Select * from hall";
        SqlDataSource4.SelectCommand = "Select * from ground";
  
        cn.Close();
        Panel6.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false; 
        Panel9.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
  
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "House")
        {
           
            Response.Redirect("login.aspx?t1=" + e.CommandArgument.ToString());

        }

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Room")
        {
           
            Response.Redirect("login.aspx?t1=" + e.CommandArgument.ToString());

        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Hall")
        {
          
            Response.Redirect("login.aspx?t1=" + e.CommandArgument.ToString());

        }
    }
    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Ground")
        {
            
            Response.Redirect("login.aspx?t1=" + e.CommandArgument.ToString());

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "ALL")
        {
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
            Panel5.Visible = true; 
             Panel6.Visible = false; 
             Panel7.Visible = false; 
             Panel8.Visible = false; 
             Panel9.Visible = false; 
            
        }
        else
        {
            if (DropDownList1.Text == "HOUSE")
            {

                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false; 
             Panel7.Visible = false; 
             Panel8.Visible = false; 
             Panel9.Visible = false; 
            }
            else if (DropDownList1.Text == "ROOM")
            {
                Panel2.Visible = false;
                Panel3.Visible = true;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false; 
             Panel7.Visible = false; 
             Panel8.Visible = false; 
             Panel9.Visible = false; 
            }
            else if (DropDownList1.Text == "HALL")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
                Panel6.Visible = false; 
             Panel7.Visible = false; 
             Panel8.Visible = false; 
             Panel9.Visible = false; 
            }
            else if (DropDownList1.Text == "GROUND")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
                Panel6.Visible = false; 
             Panel7.Visible = false; 
             Panel8.Visible = false; 
             Panel9.Visible = false; 
            }



        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.Text == "ALL" && TextBox2.Text != "")
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = true;
            Panel7.Visible = true;
            Panel8.Visible = true;
            Panel9.Visible = true;
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

                                SqlDataSource5.SelectCommand = abc;

                            }
                        }
                    }
                }
            }
            cn.Close();

            cn.Open();
            da = new SqlDataAdapter("Select * from room", cn);
            ds = new DataSet();
            da.Fill(ds);
            int colC = ds.Tables[0].Rows.Count;

            String aa;
            for (int i = 0; i < colC; i++)
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
                                aa = "select * from room where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";

                                SqlDataSource5.SelectCommand = aa;

                            }
                        }
                    }
                }
            }
            cn.Close();

            cn.Open();
            da = new SqlDataAdapter("Select * from hall", cn);
            ds = new DataSet();
            da.Fill(ds);
            int colCou = ds.Tables[0].Rows.Count;

            String ab;
            for (int i = 0; i < colCou; i++)
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
                                ab = "select * from hall where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";

                                SqlDataSource5.SelectCommand = ab;

                            }
                        }
                    }
                }
            }
            cn.Close();
            cn.Open();
            da = new SqlDataAdapter("Select * from ground", cn);
            ds = new DataSet();
            da.Fill(ds);
            int colCoun = ds.Tables[0].Rows.Count;
            String abcd;
            for (int i = 0; i < colCoun; i++)
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
                                abcd = "select * from ground where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";

                                SqlDataSource8.SelectCommand = abcd;

                            }
                        }
                    }
                }
            }
            cn.Close();
        }
        else if (DropDownList1.Text == "HOUSE" && TextBox2.Text != "")
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = true;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
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
                                
                                SqlDataSource5.SelectCommand = abc;
                               
                            }
                        }
                    }
                }
            }
            cn.Close();
        }
        else if (DropDownList1.Text == "ROOM" && TextBox2.Text != "")
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = true;
            Panel8.Visible = false;
            Panel9.Visible = false;
            cn.Open();
            da = new SqlDataAdapter("Select * from room", cn);
            ds = new DataSet();
            da.Fill(ds);
            int colC = ds.Tables[0].Rows.Count;

            String aa;
            for (int i = 0; i < colC; i++)
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
                                aa = "select * from room where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";
                               
                                SqlDataSource5.SelectCommand = aa;
                               
                            }
                        }
                    }
                }
            }
            cn.Close();
        }
        else if (DropDownList1.Text == "Hall" && TextBox2.Text != "")
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = true;
            Panel9.Visible = false;
            cn.Open();
            da = new SqlDataAdapter("Select * from hall", cn);
            ds = new DataSet();
            da.Fill(ds);
            int colCou = ds.Tables[0].Rows.Count;

            String ab;
            for (int i = 0; i < colCou; i++)
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
                                ab = "select * from hall where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";
                                
                                SqlDataSource5.SelectCommand = ab;
                               
                            }
                        }
                    }
                }
            }
            cn.Close();
        }
        else if (DropDownList1.Text == "GROUND" && TextBox2.Text != "")
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = true;
            cn.Open();
            da = new SqlDataAdapter("Select * from ground", cn);
            ds = new DataSet();
            da.Fill(ds);
            int colCoun = ds.Tables[0].Rows.Count;
            String abcd;
            for (int i = 0; i < colCoun; i++)
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
                                abcd = "select * from ground where " + ds.Tables[0].Columns[j + 9].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 9].ToString() + "'";
                            SqlDataSource8.SelectCommand = abcd;
                                                         }
                        }
                    }
                }
            }
            cn.Close();
        }
        else {
            Response.Write("<script>alert('Please fill the data to search')</script>");
        }
    }
}