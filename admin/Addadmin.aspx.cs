using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Addadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text.ToString();
        string userpass = TextBox2.Text.ToString();
        sqlHelp sqlhelper = new sqlHelp();

        string selectsql = "select * from adminInfo where adminName='" + username + "'";
        int count = sqlhelper.executeNonQueryCount(selectsql);
        if (count <= 0)
        {
            string addsql = "insert into adminInfo(adminName,adminPass) values('" + username + "','" + userpass + "')";
            sqlhelper.SqlServerExcute(addsql);
            Response.Write("<script>alert('添加成功');</script>");
        }
        else Response.Write("<script>alert('添加失败，该管理已经存在');</script>");
    }
}