using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string id = Request.QueryString["id"];
            //string id = "72";
            if(id!="")
            {
                sqlHelp sqlhelper = new sqlHelp();
                string selectsql = "select * from studentInfo where id='" + id + "'";
                DataTable dt = sqlhelper.dataTableReturn(selectsql);
                Label1.Text = dt.Rows[0]["stuNum"].ToString();
                Label2.Text = dt.Rows[0]["stuName"].ToString();
                Label3.Text = dt.Rows[0]["stuSex"].ToString();
                Label4.Text = dt.Rows[0]["stuID"].ToString();
                Label5.Text = dt.Rows[0]["stuNational"].ToString();
                Label6.Text = dt.Rows[0]["stuTel"].ToString();
                Label7.Text = dt.Rows[0]["stuCollege"].ToString();
                Label8.Text = dt.Rows[0]["stuClass"].ToString();
                if (dt.Rows[0]["stuChangerequest"].ToString()!=null)
                    TextBox1.Text =dt.Rows[0]["stuChangerequest"].ToString();
            }
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        //string id = "72";
        sqlHelp sqlhelper = new sqlHelp();
        string changerequest = TextBox1.Text.ToString();
        if(!string.IsNullOrEmpty(TextBox1.Text))
        {
            string updatesql="update studentInfo set stuChangerequest='"+changerequest+"'where id='"+id+"'";
            sqlhelper.SqlServerExcute(updatesql);
            Response.Write("<script>alert('提交变更信息成功，请耐心等待管理员审核！')</script>");
        }
    }
}