using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class admin_Modifyteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string selectsql = "select * from teacherInfo";
            DataTable db = sqlhelper.dataTableReturn(selectsql);
            GridView1.DataSource = db;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        sqlHelp sqlhelper = new sqlHelp();
        string teaid = Convert.ToString(e.CommandArgument);
        string operate = Convert.ToString(e.CommandName);
        if (operate == "del")
        {
            string deletesql = "delete from teacherInfo where id='" + teaid + "'";
            sqlhelper.SqlServerExcute(deletesql);
            Response.Write("<script>alert('删除信息成功，请刷新查看！');</script>");
        }
        else if (operate == "see")
        {
            Session["teaid"] = teaid;
            Response.Redirect("Detailteacher.aspx");
        }
        else if (operate == "edit")
        {
            Session["teaidedit"] = teaid;
            Response.Redirect("Editteacher.aspx");
        }
    }

}