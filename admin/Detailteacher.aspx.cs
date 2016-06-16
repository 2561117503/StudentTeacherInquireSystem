using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Detailteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string teaid = Session["teaid"].ToString();
            string selectsql = "select * from teacherInfo where id='" + teaid + "'";
            DataTable dt = sqlhelper.dataTableReturn(selectsql);
            Label1.Text = dt.Rows[0]["teaNum"].ToString();
            Label2.Text = dt.Rows[0]["teaName"].ToString();
            Label3.Text = dt.Rows[0]["teaSex"].ToString();
            Label4.Text = dt.Rows[0]["teaID"].ToString();
            Label5.Text = dt.Rows[0]["teaNational"].ToString();
            Label6.Text = dt.Rows[0]["teaTel"].ToString();
            Label7.Text = dt.Rows[0]["teaDepartment"].ToString();
          //  Label8.Text = dt.Rows[0]["stuClass"].ToString();
            if (dt.Rows[0]["teaChangerequest"].ToString() == "") Label8.Text = "该用户未提交变更请求";
            else Label8.Text = dt.Rows[0]["teaChangerequest"].ToString();
            Image1.ImageUrl = "~/" + dt.Rows[0]["teaPic"].ToString();
        }
    }
}