using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class waist : System.Web.UI.Page
{
    int c;
    SqlConnection cn= new SqlConnection("Data Source=DESKTOP-MP67RVV\\SQLEXPRESS;Initial Catalog=niraj;Integrated Security=True;Pooling=False");
    SqlCommand cmd ;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        cn.Open();
        cmd = new SqlCommand("Select * from book", cn);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            while (dr.Read())
            { 
                
                 c = Convert.ToInt32(dr["sno"]);
                 }
        }
        c++;
        Response.Write("Hii" + c);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        cn.Open();
        da = new SqlDataAdapter("Select * from lustab", cn);
        ds = new DataSet();
        da.Fill(ds);
        int colCount = ds.Tables[0].Rows.Count;
  
        DataTable ta = new DataTable();
        String abc;
        for (int i = 0; i < colCount; i++)
        {
            for (int j = 0; j < 5; j++)
            {
                String s = (ds.Tables[0].Rows[i][j + 4].ToString().ToUpper()).Trim();
             
                String l = (TextBox1.Text.ToUpper()).Trim();
                for (int k = 0, a = 0; k < s.Length; k++)
                {
                    if (l[a] == s[k] && l.Length <= s.Substring(k).Length)
                    {
                       
                            if (String.Compare(l,(s.Substring(k,l.Length)))==0)
                            {
                                abc = "select * from lustab where " + ds.Tables[0].Columns[j + 4].ColumnName + " = '" + ds.Tables[0].Rows[i][j + 4].ToString() + "'";
                                Response.Write(abc);
                                cn.Close();
                                cn.Open();
                                cmd = new SqlCommand(abc, cn);
                                dr = cmd.ExecuteReader();
                                DataList1.DataSource = dr;
                                DataList1.DataBind();
                            }
                       
                        Response.Write(l.Length);
                        Response.Write(l.Substring(0, l.Length));
                    }
                  
                }
            }
           
            
        }
    
        
       
    }
}