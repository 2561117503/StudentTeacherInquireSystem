using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //显示时间和星期
        Label1.Text = DateTime.Now.ToString();
        Label2.Text = DateTime.Now.ToString("ddd", new System.Globalization.CultureInfo("zh-cn"));
        if (!IsPostBack)
        { 
            //显示下拉菜单
            showDropDownList1();
            showDropDownList2();
        }
    }
    protected void showDropDownList1()
    {
        sqlHelp sqlhelp = new sqlHelp();
        string selectSql = "select * from inquireObjectInfo";
        DataTable db = sqlhelp.dataTableReturn(selectSql);
        DropDownList1.DataSource=db;
        DropDownList1.DataTextField = "inquireObject";
        DropDownList1.DataValueField = "inquireObject";
        DropDownList1.DataBind();
    }
    protected void showDropDownList2()
    {

        sqlHelp sqlhelp = new sqlHelp();
        string selectSql = "select * from inquiryModeInfo where type in('" + 0 + "','" + 1 + "')";//默认设置为查询学生
        DataTable db = sqlhelp.dataTableReturn(selectSql);
        DropDownList2.DataSource = db;
        DropDownList2.DataTextField = "inquiryMode";
        DropDownList2.DataValueField = "inquiryMode";
        DropDownList2.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["object"] = DropDownList1.Text;
        Session["way"] = DropDownList2.Text;
        Session["keywords"]=TextBox1.Text;
        //Response.Redirect("Show.aspx");
        Response.Write("<script>window.open('Show.aspx" + "','_blank')</script>");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string object1 = DropDownList1.SelectedValue.ToString();
        string myselectsql = "";
        if(object1=="教师")
        {
            myselectsql = "select * from inquiryModeInfo where type in('" + 0 + "','" + 2 + "')";
        }
        else if (object1 == "学生")
        {
            myselectsql = "select * from inquiryModeInfo where type in('" + 0 + "','" + 1 + "')";
        }
        //Response.Write(object1);
        sqlHelp sqlhelp = new sqlHelp();
        DataTable db = sqlhelp.dataTableReturn(myselectsql);
        DropDownList2.DataSource = db;
        DropDownList2.DataTextField = "inquiryMode";
        DropDownList2.DataValueField = "inquiryMode";
        DropDownList2.DataBind();
    }
}