using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Modifyteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            if (id != "")
            {
                sqlHelp sqlhelper = new sqlHelp();
                string selectsql = "select * from teacherInfo where id='" + id + "'";
                DataTable dt = sqlhelper.dataTableReturn(selectsql);
                Label1.Text = dt.Rows[0]["teaNum"].ToString();
                Label2.Text = dt.Rows[0]["teaName"].ToString();
                Label3.Text = dt.Rows[0]["teaSex"].ToString();
                Label4.Text = dt.Rows[0]["teaID"].ToString();
                Label5.Text = dt.Rows[0]["teaNational"].ToString();
                Label6.Text = dt.Rows[0]["teaTel"].ToString();
                Label7.Text = dt.Rows[0]["teaDepartment"].ToString();
            }
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        sqlHelp sqlhelper = new sqlHelp();
        string selectsql = "select * from teacherInfo where id='" + id + "'";
        if (!string.IsNullOrEmpty(TextBox1.Text))
        {
            string updatesql = "update teacherInfo set teaChangerequest='" + TextBox1.Text + "'where id='" + id + "'";
            sqlhelper.SqlServerExcute(updatesql);
            Response.Write("<script>alert('提交变更信息成功，请耐心等待管理员审核！')</script>");
        }
    }

}