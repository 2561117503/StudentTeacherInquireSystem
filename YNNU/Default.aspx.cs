using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class YNNU_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        //邮箱下拉菜单
        sqlHelp sqlhelp1 = new sqlHelp();
        string selectEmailSql = "select * from emailTab";
        DataTable db1 = sqlhelp1.dataTableReturn(selectEmailSql);
        DropDownList1.DataSource = db1;
        DropDownList1.DataTextField = "email";
        DropDownList1.DataValueField = "email";
        DropDownList1.DataBind();

        //师院要闻
        sqlHelp sqlhelp2 = new sqlHelp();
        string selectNews1Sql = "select top 9 * from newsTab where type=1 order by id desc";
        DataTable db2 = sqlhelp2.dataTableReturn(selectNews1Sql);
        GridView1.DataSource = db2;
        GridView1.DataBind();

        //院校动态
        sqlHelp sqlhelp3 = new sqlHelp();
        string selectDynamic1Sql = "select top 9 * from newsTab where type=2 order by id desc";
        DataTable db3 = sqlhelp3.dataTableReturn(selectDynamic1Sql);
        GridView2.DataSource = db3;
        GridView2.DataBind();


        sqlHelp sqlhelp4 = new sqlHelp();
        string selectRightNewsSql = "select top 14 * from newsTab where type=3 order by id desc";
        DataTable db4 = sqlhelp4.dataTableReturn(selectRightNewsSql);
        GridView3.DataSource = db4;
        GridView3.DataBind();
    }
}