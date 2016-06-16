using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Adddepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        string selectsql = "select * from departmentInfo";
        sqlHelp sqlhelper = new sqlHelp();
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        GridView1.DataSource = db;
        GridView1.DataBind();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string departmentName = TextBox1.Text;
        sqlHelp sqlhelper = new sqlHelp();
        string selectsql = "select * from departmentInfo where departmentName='" + departmentName + "'";
        int count = sqlhelper.executeNonQueryCount(selectsql);
        if (count <= 0)
        {

            string insertsql = "insert into departmentInfo(departmentName) values('" + departmentName + "')";
            sqlhelper.SqlServerExcute(insertsql);
            Response.Write("<script> alert('部门添加成功，请刷新查看！');</script>");
        }
        else Response.Write("<script> alert('部门已存在！');</script>");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string departmentid = Convert.ToString(e.CommandArgument);
        sqlHelp sqlhelper = new sqlHelp();
        if(e.CommandName=="del")
        {
            string selectsql="select * from departmentInfo where id='" + departmentid + "'";
            DataTable db = sqlhelper.dataTableReturn(selectsql);
            string departname=db.Rows[0]["departmentName"].ToString();
            string deletetea = "delete from teacherInfo where teaDepartment='" + departname+"'";
            sqlhelper.SqlServerExcute(deletetea);
            string deletesql = "delete from departmentInfo where id='" + departmentid + "'";
            sqlhelper.SqlServerExcute(deletesql);
            Response.Write("<script>alert('部门删除成功！请刷新查看');</script>");
        }
        else if(e.CommandName=="edit")
        {
            Session["departmentid"] = departmentid;
            Response.Redirect("ModifyDepartment.aspx");
        }
    }

}