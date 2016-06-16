using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class Show : System.Web.UI.Page
{
    string sqlconstr =ConfigurationManager.ConnectionStrings["StudentTeacherInquireSystemconnectionStrings"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        string objectValue = Session["object"].ToString();
        string wayValue = Session["way"].ToString();
        string keywordsValue = Session["keywords"].ToString();
        SqlConnection sqlcon = new SqlConnection(sqlconstr);

        if (objectValue == "学生")
        {
            string selectSqlAll = "select * from studentInfo ";
            string selectSqlSpecial = string.Empty;
            if (wayValue.ToString() == "根据姓名查找")
                selectSqlSpecial = "select * from studentInfo where stuName like '%" + keywordsValue + "%'";//模糊匹配
            else if (wayValue.ToString() == "根据性别查找")
                selectSqlSpecial = "select * from studentInfo where stuSex like '%" + keywordsValue + "%'";//模糊匹配
            else if (wayValue.ToString() == "根据民族查找")
                selectSqlSpecial = "select * from studentInfo where stuNational like '%" + keywordsValue + "%'";//模糊匹配
            else if (wayValue.ToString() == "根据学院查找")
                selectSqlSpecial = "select * from studentInfo where stuCollege like '%" + keywordsValue + "%'";//模糊匹配
            else if (wayValue.ToString() == "根据专业查找")
                selectSqlSpecial = "select * from studentInfo where stuClass like '%" + keywordsValue + "%'";//模糊匹配
            else if (wayValue.ToString() == "根据学号查找")
                selectSqlSpecial = "select * from studentInfo where stuNum like '%" + keywordsValue + "%'";//模糊匹配
       
            SqlDataAdapter da = new SqlDataAdapter(selectSqlAll,sqlcon);
            SqlDataAdapter da2 = new SqlDataAdapter(selectSqlSpecial, sqlcon);
            DataSet ds = new DataSet();
            DataSet ds2 = new DataSet();
            da.Fill(ds, "studentInfo");
            da2.Fill(ds2, "studentInfo");
            GridView1.DataSource = ds;
            GridView2.DataSource = ds2;
            GridView1.DataBind();
            GridView2.DataBind();

            signRows(ds, ds2);//绘制表格背景
        }//end of if (objectValue == "学生")

        else
        {
            Response.Redirect("Showteacher.aspx");
        }

    }// page_lode

    private void signRows(DataSet ds, DataSet ds2)
    {
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)//遍历控件1
        {
            DataRowView drv = ds.Tables["studentInfo"].DefaultView[i];
            string num = Convert.ToString(drv["stuNum"]);

            for (int j = 0; j <= GridView2.Rows.Count - 1; j++)//遍历控件2
            {
                DataRowView drv2 = ds2.Tables["studentInfo"].DefaultView[j];
                string num2 = Convert.ToString(drv2["stuNum"]);

                bool b = false;
                int result = string.Compare(num, num2);
                if (result == 0) b = true;
                if (b)
                {
                    GridView1.Rows[i].Cells[0].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[1].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[2].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[3].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[4].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[5].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[6].BackColor = System.Drawing.Color.Red;
                    GridView1.Rows[i].Cells[7].BackColor = System.Drawing.Color.Red;
                }
            }

        }
    }//end of private void signRows(DataSet ds, DataSet ds2)

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


    }
     protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
          string objectValue = Session["object"].ToString();
        string sortid = Convert.ToString(e.CommandArgument);
        if (e.CommandName == "modify" && objectValue=="学生")
         {
             Response.Write("<script>window.open('Modify.aspx?id=" + sortid + "','_blank')</script>");
         }
        else Response.Write("<script>window.open('Modifyteacher.aspx?id=" + sortid + "','_blank')</script>");

    }//end of protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)

   

}