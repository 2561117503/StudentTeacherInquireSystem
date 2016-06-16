using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Addcollege : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        string selectsql = "select * from collegeInfo";
        sqlHelp sqlhelper = new sqlHelp();
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        GridView1.DataSource = db;
        GridView1.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string collegeName = TextBox1.Text;
        sqlHelp sqlhelper = new sqlHelp();

        string selectsql = "select * from collegeInfo where collegeName='" + collegeName + "'";
        int count = sqlhelper.executeNonQueryCount(selectsql);
        if (count <= 0)
        {
            string insertsql = "insert into collegeInfo(collegeName) values('" + collegeName + "')";
            sqlhelper.SqlServerExcute(insertsql);
            Response.Write("<script> alert('学院添加成功，请刷新查看！');</script>");
        }
        else Response.Write("<script> alert('学院已存在！');</script>");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string collegeid = Convert.ToString(e.CommandArgument);
        sqlHelp sqlhelper = new sqlHelp();
        if (e.CommandName == "del")
        {
            string selectcollegename = "select * from collegeInfo where id='" + collegeid + "'";
            DataTable db1 = sqlhelper.dataTableReturn(selectcollegename);
            string collegename = db1.Rows[0]["collegeName"].ToString();
            string delclass = "delete from classInfo where collegeName='" + collegename + "'";
            sqlhelper.SqlServerExcute(delclass);
            string delstu = "delete from studentInfo where stuCollege='" + collegename + "'";
            sqlhelper.SqlServerExcute(delstu);

            string deletesql = "delete from collegeInfo where id='" + collegeid + "'";
            sqlhelper.SqlServerExcute(deletesql);
            Response.Write("<script>alert('学院删除成功！请刷新查看');</script>");
        }
        else if (e.CommandName == "edit")
        {
            Session["collegeid"] = collegeid;
            Response.Redirect("Modifycollege.aspx");
        }
    }

}