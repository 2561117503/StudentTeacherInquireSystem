using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlHelp sqlhelper = new sqlHelp();
        Label1.Text = "云南师范大学";
        Label2.Text = sqlhelper.executeNonQueryCount("select * from departmentInfo").ToString() + "个";
        Label3.Text = sqlhelper.executeNonQueryCount("select * from collegeInfo").ToString() + "个";
        Label4.Text = sqlhelper.executeNonQueryCount("select * from classInfo").ToString() + "个";
        Label5.Text = sqlhelper.executeNonQueryCount("select * from teacherInfo").ToString() + "个";
        Label6.Text = sqlhelper.executeNonQueryCount("select * from studentInfo").ToString() + "个";
    }
}