using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net;
public partial class admin_NewLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        sqlHelp sqlhelper = new sqlHelp();
        string username, password, verifycode1, verifycode2, loginstate;
        username = TextBox1.Text.ToString();
        password = TextBox2.Text.ToString();
        verifycode1 = TextBox3.Text.ToString();
        verifycode2 = Request.Cookies["verifycode"].Value.ToString();
        if (verifycode1 == verifycode2)
        {
            string selectsql = "select * from adminInfo where adminName='" + username + "'and adminPass='" + password + "'";
            int count = sqlhelper.executeNonQueryCount(selectsql);
            if (count > 0)
            {
                loginstate = "登陆成功";
                Session["adminName"] = username;
                Session["adminPass"] = password;
                string datetime = DateTime.Now.ToString();
                string ip = Request.ServerVariables["REMOTE_ADDR"].ToString(); //取得本机IP搜索
                string strHostName = Dns.GetHostName(); //得到本机的主机名
                string insertsql = "insert into loginInfo(loginname,loginState,loginTime,loginIP,loginHostname) values('" + username + "','" + loginstate + "','" + datetime + "','" + ip + "','" + strHostName + "')";
                sqlhelper.SqlServerExcute(insertsql);
                Response.Redirect("Default.aspx");
            }
            else
            {
                loginstate = "登陆失败";
                string datetime = DateTime.Now.ToString();
                string ip = Request.ServerVariables["REMOTE_ADDR"].ToString(); //取得本机IP搜索
                string strHostName = Dns.GetHostName(); //得到本机的主机名
                string insertsql = "insert into loginInfo(loginname,loginState,loginTime,loginIP,loginHostname) values('" + username + "','" + loginstate + "','" + datetime + "','" + ip + "','" + strHostName + "')";
                sqlhelper.SqlServerExcute(insertsql);
                Response.Write("<Script>alert('用户名或密码错误');</Script>");
            }


        }
        else Response.Write("<Script>alert('验证码错误');</Script>");
    }

  
}