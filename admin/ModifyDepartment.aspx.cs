using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_ModifyDepartment : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        // Session["departmentid"]=1;
        sqlHelp sqlhelper=new sqlHelp();
       string departmentid=Session["departmentid"].ToString();
      // Response.Write(departmentid);
       string selectsql = "select * from departmentInfo where id='" + departmentid + "'";
       DataTable db = sqlhelper.dataTableReturn(selectsql);
       Label1.Text = db.Rows[0]["departmentName"].ToString();
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Session["departmentid"] = 1;
        sqlHelp sqlhelper = new sqlHelp();
        string departmentid=Session["departmentid"].ToString();
        string selectsql = "select * from departmentInfo where id='" + departmentid + "'";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        string oldName= db.Rows[0]["departmentName"].ToString();
        string departmentNewName = TextBox1.Text.ToString();
        string updatesql1 = "update departmentInfo set departmentName='" +  departmentNewName+ "'where id='"+departmentid+"'";
        sqlhelper.SqlServerExcute(updatesql1);
        string updatesql2 = "update teacherInfo set teaDepartment='" + departmentNewName + "'where teaDepartment='"+oldName+"'";
        sqlhelper.SqlServerExcute(updatesql2);
        Response.Write("<Script>alert('信息修改成功！');</script>");
    }
}