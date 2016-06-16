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
public partial class admin_Addteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string selectsql = "select * from departmentInfo";
            DataTable db = new DataTable();
            db = sqlhelper.dataTableReturn(selectsql);
            DropDownList1.DataSource = db;
            DropDownList1.DataTextField = "departmentName";
            DropDownList1.DataValueField = "departmentName";
            DropDownList1.DataBind();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string num = TextBox1.Text.ToString();
        string name = TextBox2.Text.ToString();
        string sex = TextBox3.Text.ToString();
        string ID = TextBox4.Text.ToString();
        string national = TextBox5.Text.ToString();
        string tel = TextBox6.Text.ToString();
        string department = DropDownList1.Text.ToString();
        string stuPic = string.Empty;
        sqlHelp sqlhelper = new sqlHelp();
        string selectsql = "select * from teacherInfo where teaNum='" + num + "'";
        int count = sqlhelper.executeNonQueryCount(selectsql);
        if(count>0)
        {
            Response.Write("<Script>alert('该工号已存在，请核实后再添加！');</script>");
        }
        else
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

                string insertsql = "insert into teacherInfo(teaNum,teaName,teaSex,teaID,teaNational,teaTel,teaDepartment,teaPic) values('" + num + "','" + name + "','" + sex + "','" + ID + "','" + national + "','" + tel + "','" + department+ "','"+tpic + "')";
                sqlhelper.SqlServerExcute(insertsql);
                Response.Write("<Script>alert('该教师已添加，请刷新查看！');</script>");
            }//end of if (FileUpload1.HasFile)


            else
            {
                if (sex == "男")
                {
                    stuPic = "picture/man.jpg";
                    string insertsql = "insert into teacherInfo(teaNum,teaName,teaSex,teaID,teaNational,teaTel,teaDepartment,teaPic) values('" + num + "','" + name + "','" + sex + "','" + ID + "','" + national + "','" + tel + "','" + department + "','" + stuPic + "')";
                    sqlhelper.SqlServerExcute(insertsql);
                    Response.Write("<script>alert('信息添加成功');</script>");
                }
                else
                {
                    stuPic = "picture/women.jpg";
                    string insertsql = "insert into teacherInfo(teaNum,teaName,teaSex,teaID,teaNational,teaTel,teaDepartment,teaPic) values('" + num + "','" + name + "','" + sex + "','" + ID + "','" + national + "','" + tel + "','" + department + "','" + stuPic + "')";
                    sqlhelper.SqlServerExcute(insertsql);
                    Response.Write("<script>alert('信息添加成功');</script>");
                }
            }

        }


    }
}