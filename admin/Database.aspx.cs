using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.IO;
public partial class admin_Database : System.Web.UI.Page
{
    string strFilename, strFile,strSql;
    string strPath = System.Web.HttpContext.Current.Server.MapPath("../App_Data");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sqlHelp sqlhelper = new sqlHelp();
        strFilename = "StudentTeacherInquerySystemDBBACKUP" + DateTime.Now.ToString("yyyyMMdd") + ".bak";
        strFile = strPath + "/" + strFilename;
        strSql = "BACKUP DATABASE StudentTeacherInquerySystemDB to DISK='" + strFile + "'";
        try
        {
            sqlhelper.SqlServerExcute(strSql);
            Label1.Text = "数据库备份成功，请点击上面，下载到本地磁盘备份！";
            //HyperLink1.NavigateUrl = "../App_Data/" + strFilename;
            //HyperLink1.Visible = true;
        }
        catch(Exception ex)
        {
            Label1.Text = "备份数据库出错，错误信息为：" + ex.Message;
            //HyperLink1.Visible = false;
        }
        finally
        {
            sqlHelp.closeConn();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(FileUpload1.FileName=="")
        {
            this.Label2.Text = "请选择备份文件";
        }
        bool fileok = false;
        if(FileUpload1.HasFiles)
        {
            strFile = strPath + FileUpload1.FileName;
            if(File.Exists(strFile))
            {
                string FileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();//取得文件扩展名
                string[] allowExtension = { ".bak" };
                for(int i=0;i<allowExtension.Length;i++)
                {
                    if(FileExtension==allowExtension[i])
                    {
                        fileok = true;
                        break;
                    }
                }
            }//end of if(File.Exists(strFile))
            else
            {
                fileok = false;
            }

            if(FileUpload1.PostedFile.ContentLength>10240000)
            {
                Label2.Text = "文件大于10M，请使用手工方式还原";
                fileok = false;
            }
            else { fileok = true; }


            if(fileok)//最后的结果
            {
                try
                {
                    FileUpload1.PostedFile.SaveAs(strPath + FileUpload1.FileName);
                    SqlConnection conn = new SqlConnection();
                    conn.ConnectionString = "Data Source=(local);Initial Catalog=StudentTeacherInquerySystemDB;User ID=sa;pwd =admin123456";
                    conn.Open();
                    string sql = "SELECT spid FROM sysprocesses ,sysdatabases WHERE sysprocesses.dbid=sysdatabases.dbid AND sysdatabases.Name='StudentTeacherInquerySystemDB'";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                   SqlDataReader dr;
                    ArrayList list=new ArrayList();
                    try{
                        dr=cmd.ExecuteReader();
                        while(dr.Read())
                        {
                            list.Add(dr.GetInt16(0));
                        }
                        dr.Close();
                        for(int i=0;i<list.Count;i++)
                        {
                             cmd = new SqlCommand(string.Format("KILL {0}", list[i].ToString()), conn);
                             cmd.ExecuteNonQuery();
                        }
                      strSql = "use master restore database StudentTeacherInquerySystemDB from disk='" + strFile + "' with replace";
                            try
                            {
                                sqlHelp sqlhelper = new sqlHelp();
                                sqlhelper.SqlServerExcute(strSql);
                                Label2 .Text = "成功还原数据库！";

                            }
                            catch (Exception ex)
                            {
                                Label2.Text = "还原数据库出错！" + ex.Message;
                            }
                            finally
                            {
                                sqlHelp.closeConn();
                            }
                        }
                        catch (SqlException eee)
                        {
                            Response.Write("<script>window.alert(e.ToString())</script>");
                        }
                        finally
                        {
                            conn.Close();
                        }

                    }
                    catch (Exception ex)
                    {
                        Label2.Text = "还原数据库出错！" + ex.Message;
                    }
                    finally
                    {

                    }
                }
                else
                {
                    Label2.Text = "本地数据库上传失败";
                    return;
                }
                    }
                }
            }

//        }//end of if(FileUpload1.HasFiles)
//    }
//}