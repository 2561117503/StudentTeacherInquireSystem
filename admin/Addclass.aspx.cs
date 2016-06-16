using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Addclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string selectsql = "select * from collegeInfo";
            DataTable db = new DataTable();
            db = sqlhelper.dataTableReturn(selectsql);
            DropDownList1.DataSource = db;
            DropDownList1.DataTextField = "collegeName";
            DropDownList1.DataValueField = "collegeName";
            DropDownList1.DataBind();


            string selectsql2 = "select * from classInfo";
            DataTable db2 = new DataTable();
            db2 = sqlhelper.dataTableReturn(selectsql2);
            GridView1.DataSource = db2;
            GridView1.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string collegename = DropDownList1.Text.ToString();
        string classname = TextBox1.Text.ToString();
        string selectsql = "select * from classInfo where className='" + classname + "'and collegeName='" + collegename + "'";
        sqlHelp sqlhelper = new sqlHelp();
        int count = sqlhelper.executeNonQueryCount(selectsql);
        if(count>0)
        {
            Response.Write("<script>alert('该专业已存在！');</script>");
        }
        else
        {
            string insertsql = "insert into classInfo(className,collegeName) values('" + classname + "','" + collegename + "')";
            sqlhelper.SqlServerExcute(insertsql);
            Response.Write("<script>alert('专业添加成功，请刷新查看！');</script>");
        }

    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string classid = Convert.ToString(e.CommandArgument);
        sqlHelp sqlhelper = new sqlHelp();
        if (e.CommandName == "del")
        {

            string selectsql = "select * from classInfo where id='" + classid + "'";
            DataTable db = sqlhelper.dataTableReturn(selectsql);
            string classname = db.Rows[0]["className"].ToString();
            string deletestu = "delete from studentInfo where stuClass='" + classname + "'";
            sqlhelper.SqlServerExcute(deletestu);

            string deletesql = "delete from classInfo where id='" + classid + "'";
            sqlhelper.SqlServerExcute(deletesql);
            Response.Write("<script>alert('专业删除成功！请刷新查看');</script>");
        }
        else if (e.CommandName == "edit")
        {
            Session["classid"] = classid;
            Response.Redirect("Modefyclass.aspx");
        }
    }


  
}