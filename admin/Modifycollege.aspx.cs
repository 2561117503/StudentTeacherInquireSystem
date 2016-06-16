using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Modifycollege : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlHelp sqlhelper = new sqlHelp();
        string collegeid = Session["collegeid"].ToString();
        string selectsql = "select * from collegeInfo where id='" + collegeid + "'";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        Label1.Text = db.Rows[0]["collegeName"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        sqlHelp sqlhelper = new sqlHelp();
        string collegeid = Session["collegeid"].ToString();
        string selectsql = "select * from collegeInfo where id='" + collegeid + "'";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        string oldName = db.Rows[0]["collegeName"].ToString();
        string departmentNewName = TextBox1.Text.ToString();
        string updatesql1 = "update collegeInfo set collegeName='" + departmentNewName + "'where id='" + collegeid + "'";
        sqlhelper.SqlServerExcute(updatesql1);
        string updatesql2 = "update studentInfo set stuCollege='" + departmentNewName + "'where stuCollege='" + oldName + "'";
        sqlhelper.SqlServerExcute(updatesql2);
        Response.Write("<Script>alert('信息修改成功！');</script>");
    }
}