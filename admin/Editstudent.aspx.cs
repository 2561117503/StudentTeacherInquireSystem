using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
public partial class admin_Editstudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string stuid = Session["stuidedit"].ToString();
            string selectsql = "select * from studentInfo where id='" + stuid + "'";
            DataTable db = sqlhelper.dataTableReturn(selectsql);
            TextBox1.Text = db.Rows[0]["stuNum"].ToString();
            TextBox2.Text = db.Rows[0]["stuName"].ToString();
            TextBox3.Text = db.Rows[0]["stuSex"].ToString();
            TextBox4.Text = db.Rows[0]["stuID"].ToString();
            TextBox5.Text = db.Rows[0]["stuNational"].ToString();
            TextBox6.Text = db.Rows[0]["stuTel"].ToString();
            TextBox7.Text = db.Rows[0]["stuChangerequest"].ToString();

            //string selectcollege = "select * from collegeInfo";
            //DataTable db2 = sqlhelper.dataTableReturn(selectcollege);
            //DropDownList1.DataSource = db2;
            //DropDownList1.DataTextField = "collegeName";
            //DropDownList1.DataValueField = "collegeName";
            //DropDownList1.DataBind();
            //DropDownList1.Text = db.Rows[0]["stuCollege"].ToString();

            //string selectclass = "select * from classInfo";
            //DataTable db3 = sqlhelper.dataTableReturn(selectclass);
            //DropDownList2.DataSource = db3;
            //DropDownList2.DataTextField = "className";
            //DropDownList2.DataValueField = "className";
            //DropDownList2.DataBind();
            //DropDownList2.Text = db.Rows[0]["stuClass"].ToString();
            GetDropDownList1();
            GetDropDownList2();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string stuid = Session["stuidedit"].ToString();
        sqlHelp sqlhelp = new sqlHelp();
        string stuNum = TextBox1.Text;
        string stuName = TextBox2.Text;
        string stuSex = TextBox3.Text;
        string stuID = TextBox4.Text;
        string stuNational = TextBox5.Text;
        string stuTel = TextBox6.Text;
        string stuCollege = DropDownList1.Text;
        string stuClass = DropDownList2.Text;
        string stuChangerequest = TextBox7.Text;
        string stuPic = string.Empty;

        string selectcount = "select * from studentInfo where stuNum='" + stuNum + "'";
        int count = sqlhelp.executeNonQueryCount(selectcount);
        if (count <= 1)
        {

            if (FileUpload1.HasFile)
            {
                Random r = new Random();
                string ex = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                if (ex != ".gif" && ex != ".jpg" && ex != ".jpeg" && ex != ".bmp" && ex != ".png")
                {
                    Response.Write("<script>alert('文件格式不正确!')</script>");
                    Response.End();
                }
                string newFileName = DateTime.Now.ToString("yyyyMMddHHmmss") + r.Next(100, 999).ToString() + ex;
                DateTime now = DateTime.Now; //获取系统时间
                string classid = DateTime.Now.ToString("yyyy-MM");

                //根据年份判断在该路径下是否存在以当年年份文件夹 否则将建立以该年份的文件夹
                if (!Directory.Exists(HttpContext.Current.Server.MapPath("../picture/") + "//" + classid))
                //HttpContext.Current.Server.MapPath(相对路径)：把相对路径转为服务器上的绝对路径。File.Exists(绝对路径)：检查是否存在绝对路径指向的文件或目录。
                {
                    System.IO.Directory.CreateDirectory(@HttpContext.Current.Server.MapPath("../picture/") + "//" + classid);
                    //System.IO.Directory.CreateDirectory(文件夹绝对路径)：建立绝对路径文件夹。
                }
                FileUpload1.SaveAs(Server.MapPath("../picture//" + classid + "//" + newFileName));
                string tpic = "picture/" + classid + "/" + newFileName;

            //    string sql = "insert into studentInfo(stuNum,stuName,stuSex,stuID,stuNational,stuTel,stuCollege,stuClass,stuChangerequest,stuPic) values('" + stuNum + "','" + stuName + "','" + stuSex + "','" + stuID + "','" + stuNational + "','" + stuTel + "','" + stuCollege + "','" + stuClass + "'," + stuChangerequest + "'," + tpic + ")";
                string sql = "update studentInfo set stuNum='" + stuNum + "',stuName='" + stuName + "',stuSex='" + stuSex + "',stuID='" + stuID + "',stuNational='" + stuNational + "',stuTel='" + stuTel + "',stuCollege='" + stuCollege + "',stuClass='" + stuClass + "',stuChangerequest='" + stuChangerequest + "',stuPic='" + tpic + "'where id='" + stuid + "'";
                sqlhelp.SqlServerExcute(sql);
                Response.Write("<script>alert('信息修改成功');</script>");
            }//end of if (FileUpload1.HasFile)


            else
            {
                if (stuSex == "男")
                {
                    stuPic = "picture/man.jpg";
                    string sql = "update studentInfo set stuNum='" + stuNum + "',stuName='" + stuName + "',stuSex='" + stuSex + "',stuID='" + stuID + "',stuNational='" + stuNational + "',stuTel='" + stuTel + "',stuCollege='" + stuCollege + "',stuClass='" + stuClass + "',stuChangerequest='" + stuChangerequest + "',stuPic='" + stuPic + "'where id='" + stuid + "'";
                    sqlhelp.SqlServerExcute(sql);
                    Response.Write("<script>alert('信息修改成功');</script>");
                }
                else
                {
                    stuPic = "picture/women.jpg";
                    string sql = "update studentInfo set stuNum='" + stuNum + "',stuName='" + stuName + "',stuSex='" + stuSex + "',stuID='" + stuID + "',stuNational='" + stuNational + "',stuTel='" + stuTel + "',stuCollege='" + stuCollege + "',stuClass='" + stuClass + "',stuChangerequest='" + stuChangerequest + "',stuPic='" + stuPic + "'where id='" + stuid + "'";
                    sqlhelp.SqlServerExcute(sql);
                    Response.Write("<script>alert('信息修改成功');</script>");
                }
            }//end of else! (FileUpload1.HasFile)


        }//end of if count<=0
        else Response.Write("<script>alert('信息修改失败');</script>");
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        GetDropDownList2();
    }
    private void GetDropDownList2()
    {
        string collegename = this.DropDownList1.SelectedValue.ToString();
        sqlHelp sqlhelper = new sqlHelp();
        string selectsql = "select * from classInfo where collegeName='" + collegename + "'";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        DropDownList2.DataSource = db;
        DropDownList2.DataTextField = "className";
        DropDownList2.DataValueField = "className";
        DropDownList2.DataBind();
        //  DropDownList2.SelectedIndex = db.Rows.Count;
    }

    private void GetDropDownList1()
    {
        sqlHelp sqlhelper = new sqlHelp();
        string selectsql = "select * from collegeInfo";
        DataTable db = sqlhelper.dataTableReturn(selectsql);
        DropDownList1.DataSource = db;
        DropDownList1.DataTextField = "collegeName";
        DropDownList1.DataValueField = "collegeName";
        DropDownList1.DataBind();
        //  DropDownList1.SelectedIndex = db.Rows.Count;
    }

}