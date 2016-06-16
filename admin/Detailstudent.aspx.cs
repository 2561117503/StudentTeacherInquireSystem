using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Detailstudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string stuid = Session["stuid"].ToString();
            string selectsql = "select * from studentInfo where id='" + stuid + "'";
            DataTable dt = sqlhelper.dataTableReturn(selectsql);
            Label1.Text = dt.Rows[0]["stuNum"].ToString();
            Label2.Text = dt.Rows[0]["stuName"].ToString();
            Label3.Text = dt.Rows[0]["stuSex"].ToString();
            Label4.Text = dt.Rows[0]["stuID"].ToString();
            Label5.Text = dt.Rows[0]["stuNational"].ToString();
            Label6.Text = dt.Rows[0]["stuTel"].ToString();
            Label7.Text = dt.Rows[0]["stuCollege"].ToString();
            Label8.Text = dt.Rows[0]["stuClass"].ToString();
            if (dt.Rows[0]["stuChangerequest"].ToString() == "") Label9.Text = "该用户未提交变更请求";
            else Label9.Text = dt.Rows[0]["stuChangerequest"].ToString();
           Image1.ImageUrl = "~/"+dt.Rows[0]["stuPic"].ToString();
        }
    }
}