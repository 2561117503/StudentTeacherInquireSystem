using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Text.RegularExpressions;
/// <summary>
/// sqlHelp 的摘要说明
/// </summary>
public class sqlHelp
{
	public sqlHelp()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public static void chechLogin(string url)
    {
        if( HttpContext.Current.Session["username"]==null)
        {
            HttpContext.Current.Response.Redirect(url);
        }
    }
   
    public static SqlConnection conn;
    public static void openConn()
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["StudentTeacherInquireSystemconnectionStrings"].ToString();
        conn = new SqlConnection(sqlcon);
        if (conn.State.ToString().ToLower() == "open") 
        { 
        }
        else conn.Open();
    }

    public static void closeConn()
    {
        if (conn.State.ToString().ToLower() == "open")
        {
            conn.Close();
            conn.Dispose();
        }
    }

    //执行一条返回结果集的SqlCommand命令
    public static SqlDataReader dataReader( string sql)
    {
        openConn();
        SqlCommand cmd = new SqlCommand(sql,conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        return rdr;
    }

    public DataSet dataSetReturn(string sql, string tableName)
    {
        openConn();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(sql, conn);
        da.Fill(ds, tableName);
        closeConn();
        return ds;
    }
    public DataView DataViewReturn(string sql)
    {
        openConn();
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(sql, conn);
        da.Fill(ds, "temp");
        closeConn();
        return ds.Tables[0].DefaultView;
    }
    public DataTable dataTableReturn(string sql)
    {
        openConn();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        da.Fill(dt);
        closeConn();
        return dt;
    }

    public static string getSafeValue(string Value)
    {
        if (string.IsNullOrEmpty(Value))
            return string.Empty;
        Value = Regex.Replace(Value, @";", string.Empty);
        Value = Regex.Replace(Value, @":", string.Empty);
        Value = Regex.Replace(Value, @",", string.Empty);
        Value = Regex.Replace(Value, @".", string.Empty);
        Value = Regex.Replace(Value, @":", string.Empty);
        Value = Regex.Replace(Value, @"'", string.Empty);
        Value = Regex.Replace(Value, @"&", string.Empty);
        Value = Regex.Replace(Value, @"%20", string.Empty);
        Value = Regex.Replace(Value, @"--", string.Empty);
        Value = Regex.Replace(Value, @"==", string.Empty);
        Value = Regex.Replace(Value, @"<", string.Empty);
        Value = Regex.Replace(Value, @">", string.Empty);
        Value = Regex.Replace(Value, @"%", string.Empty);
        return Value;
    }

    public static bool isNumber(string Value)
    {
        if (string.IsNullOrEmpty(Value)) return false;
        foreach(char i in Value)
        {
            if (!char.IsDigit(i))
                return false;
        }
        return true;
    }

    public void SqlServerExcute(string sql)
    {
        openConn();
        SqlCommand cmd;
        cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        closeConn();
    }

    //执行一个不需要返回值的SqlCommand命令
    public int executeNonQuery(string sql)
    {
        openConn();
        SqlCommand cmd = new SqlCommand(sql,conn);
        int value=cmd.ExecuteNonQuery();//执行update，insert,delete之类的sql，不返回数据集。
        return value;
    }

    public int executeNonQueryCount(string sql)
    {
        openConn();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = conn;
        SqlDataReader da = cmd.ExecuteReader();
        int count = 0;
        while(da.Read())
        {
            count++;
        }
        closeConn();
        return count;
    }



}