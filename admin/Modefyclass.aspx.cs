using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Modefyclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            { 
  //      Session["classid"] = 39;
        sqlHelp sqlhelper = new sqlHelp();
        string classid = Session["classid"].ToString();
        string selectsql = "select * from classInfo where id='" + classid + "'";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        Label1.Text = db.Rows[0]["className"].ToString();
        string selectsql2 = "select * from collegeInfo";
        DataTable db2 = sqlhelper.dataTableReturn(selectsql2);
        DropDownList1.DataSource = db2;
        DropDownList1.DataTextField = "collegeName";
        DropDownList1.DataValueField = "collegeName";
        DropDownList1.DataBind();
            }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["classid"] = 39;
        sqlHelp sqlhelper = new sqlHelp();
        string classid = Session["classid"].ToString();
        string selectsql = "select * from classInfo where id='" + classid + "'";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        string oldName = db.Rows[0]["className"].ToString();

        string classNewName = TextBox1.Text.ToString();
        string collegeNewName = DropDownList1.Text;
        string updatesql1 = "update classInfo set className='" + classNewName+ "'where id='" + classid + "'";
        sqlhelper.SqlServerExcute(updatesql1);
        string updatesql11 = "update classInfo set collegeName='" + collegeNewName + "'where id='" + classid + "'";      
        sqlhelper.SqlServerExcute(updatesql11);
        string updatesql2 = "update studentInfo set stuClass='" + classNewName + "'where stuClass='" + oldName + "'";
        sqlhelper.SqlServerExcute(updatesql2);
        string updatesql22 = "update studentInfo set stuCollege='" + collegeNewName + "'where stuClass='" + classNewName + "'";
        sqlhelper.SqlServerExcute(updatesql22);
        Response.Write("<Script>alert('信息修改成功！');</script>");
    }
  
}