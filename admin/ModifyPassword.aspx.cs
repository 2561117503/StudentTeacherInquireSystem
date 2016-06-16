using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ModifyPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text.ToString();
        string userpass = TextBox2.Text.ToString();
        string newpass = TextBox3.Text.ToString();
        sqlHelp sqlhelper = new sqlHelp();
        string selectsql = "select * from adminInfo where adminName='" + username + "'and adminPass='" + userpass + "'";
        int count = sqlhelper.executeNonQueryCount(selectsql);
        if(count>0)
        {
            sqlHelp sqlhelper1 = new sqlHelp();
            string updatesql = "update adminInfo set adminPass='" + newpass+"'where adminName='"+ username+"'";
            sqlhelper1.SqlServerExcute(updatesql);
            Response.Write("<script>alert('密码修改成功！');</script>");
        } else Response.Write("<script>alert('密码修改失败！');</script>");

    }
}