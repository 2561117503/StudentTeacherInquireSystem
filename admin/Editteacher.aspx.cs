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
public partial class admin_Editteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlHelp sqlhelper = new sqlHelp();
            string teaid = Session["teaidedit"].ToString();
            string selectsql = "select * from teacherInfo where id='" + teaid + "'";
            DataTable db = sqlhelper.dataTableReturn(selectsql);
            TextBox1.Text = db.Rows[0]["teaNum"].ToString();
            TextBox2.Text = db.Rows[0]["teaName"].ToString();
            TextBox3.Text = db.Rows[0]["teaSex"].ToString();
            TextBox4.Text = db.Rows[0]["teaID"].ToString();
            TextBox5.Text = db.Rows[0]["teaNational"].ToString();
            TextBox6.Text = db.Rows[0]["teaTel"].ToString();
            TextBox7.Text = db.Rows[0]["teaChangerequest"].ToString();

            string selectdepartment = "select * from departmentInfo";
            DataTable db2 = sqlhelper.dataTableReturn(selectdepartment);
            DropDownList1.DataSource = db2;
            DropDownList1.DataTextField = "departmentName";
            DropDownList1.DataValueField = "departmentName";
            DropDownList1.DataBind();
            DropDownList1.Text = db.Rows[0]["teaDepartment"].ToString();

            
        }
    }




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
         string teaid = Session["teaidedit"].ToString();
        sqlHelp sqlhelp = new sqlHelp();
        string teaNum = TextBox1.Text;
        string teaName = TextBox2.Text;
        string teaSex = TextBox3.Text;
        string teaID = TextBox4.Text;
        string teaNational = TextBox5.Text;
        string teaTel = TextBox6.Text;
        string teaDepartment = DropDownList1.Text;
        string teaChangerequest = TextBox7.Text;
        string teaPic = string.Empty;

        string selectcount = "select * from teacherInfo where teaNum='" + teaNum + "'";
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
                string sql = "update teacherInfo set teaNum='" + teaNum + "',teaName='" + teaName + "',teaSex='" + teaSex + "',teaID='" + teaID + "',teaNational='" + teaNational + "',teaTel='" + teaTel + "',teaDepartment='" + teaDepartment + "',teaChangerequest='" + teaChangerequest + "',teaPic='" + tpic + "'where id='" + teaid + "'";
                sqlhelp.SqlServerExcute(sql);
                Response.Write("<script>alert('信息修改成功');</script>");
            }//end of if (FileUpload1.HasFile)


            else
            {
                if (teaSex == "男")
                {
                    teaPic = "picture/man.jpg";
                string sql = "update teacherInfo set teaNum='" + teaNum + "',teaName='" + teaName + "',teaSex='" + teaSex + "',teaID='" + teaID + "',teaNational='" + teaNational + "',teaTel='" + teaTel + "',teaDepartment='" + teaDepartment + "',teaChangerequest='" + teaChangerequest + "',teaPic='" + teaPic + "'where id='" + teaid + "'";
                    sqlhelp.SqlServerExcute(sql);
                    Response.Write("<script>alert('信息修改成功');</script>");
                }
                else
                {
                    teaPic = "picture/women.jpg";
                string sql = "update teacherInfo set teaNum='" + teaNum + "',teaName='" + teaName + "',teaSex='" + teaSex + "',teaID='" + teaID + "',teaNational='" + teaNational + "',teaTel='" + teaTel + "',teaDepartment='" + teaDepartment + "',teaChangerequest='" + teaChangerequest + "',teaPic='" + teaPic + "'where id='" + teaid + "'";
                    sqlhelp.SqlServerExcute(sql);
                    Response.Write("<script>alert('信息修改成功');</script>");
                }
            }//end of else! (FileUpload1.HasFile)


        }//end of if count<=0
        else Response.Write("<script>alert('信息修改失败');</script>");
    }
}
