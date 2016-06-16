<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_left.aspx.cs" Inherits="admin_Default_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../style/backStyleSheet.css" type="text/css" />   
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	/*background-image: url(images/backhead.jpg);*/
	background-repeat: repeat-y;
	background-color: #2EAFBB;	
}
</style>
</head>
 <body style="overflow-x:hidden;scrollbar-base-color:#f8f8f8;">
    <form id="form1" runat="server">
    <div>
   
<table width="189" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="410" align="center" valign="top" ><table width="98" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="1"></td>
      </tr>
    </table>
      <table width="100" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="27" background="images/left_titlecoin.jpg"><table width="167" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33">&nbsp;</td>
            <td width="134" align="left" class="left1">系统信息管理</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="87" valign="top" background="images/m12.jpg"><table width="98" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="10" height="10"></td>
          </tr>
        </table>
          <table width="153" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
            <td width="123" height="25" align="left"><a href="Default_main.aspx" class="lm" target="main">管理首页</a></td>
          </tr>
          <tr>
            <td height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
            <td height="25" align="left"><a href="ModifyPassword.aspx" class="lm" target="main">修改密码</a></td>
          </tr>
             <tr>
            <td height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
            <td height="25" align="left"><a href="Addadmin.aspx" class="lm" target="main">管理员设置</a></td>
          </tr>
          <tr>
            <td height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
            <td height="25" align="left"><a href="Exitlogin.aspx" class="lm" target="main">退出登录</a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="167" height="15"></td>
      </tr>
  </table>
      <table width="100" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="27" background="images/left_titlecoin.jpg"><table width="167" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33">&nbsp;</td>
              <td width="134" align="left" class="left1">院校信息管理</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="61" valign="top" background="images/m12.jpg"><table width="98" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="10" height="10"></td>
            </tr>
          </table>
            <table width="153" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Adddepartment.aspx" class="lm"  target="main">添加部门信息</a></td>
              </tr>
              <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Addcollege.aspx" class="lm" target="main">添加学院信息</a></td>
              </tr>
                <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Addclass.aspx" class="lm" target="main">添加专业信息</a></td>
              </tr>
            </table></td>
        </tr>
        <tr>
         <td width="167" height="15"></td>
        </tr>
      </table>
      <table width="100" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="27" background="images/left_titlecoin.jpg"><table width="167" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33">&nbsp;</td>
              <td width="134" align="left" class="left1">教师信息管理</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="61" valign="top" ><table width="98" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="167" height="15"></td>
            </tr>
          </table>
            <table width="153" border="0" align="center" cellpadding="0" cellspacing="0">
               <%-- <tr>
                <td height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td height="25" align="left"><a href="addkc_gl.aspx" class="lm"  target="main">教师详细信息</a></td>
              </tr>--%>
              <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Addteacher.aspx" class="lm"  target="main">教师信息添加</a></td>
              </tr>
              <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Modifyteacher.aspx" class="lm" target="main">教师信息修改</a></td>
              </tr>
             <%-- <tr>
                <td height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td height="25" align="left"><a href="addkc_gl.aspx" class="lm"  target="main">管理课程信息</a></td>
              </tr>
               <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="shipinmain.aspx" class="lm" target="main">课程资源管理</a></td>
              </tr>    --%>         
            </table></td>
        </tr>
        <tr>
         <td width="167" height="15"></td>
        </tr>
    </table>
      <table width="100" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="27" background="images/left_titlecoin.jpg"><table width="167" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33">&nbsp;</td>
              <td width="134" align="left" class="left1">学生信息管理</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="60" valign="top" background="images/m12.jpg"><table width="98" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="10" height="10"></td>
            </tr>
          </table>
            <table width="153" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Addstudent.aspx" class="lm"  target="main">学生信息添加</a></td>
              </tr>
              <tr>
                <td height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td height="25" align="left"><a href="Modifystudent.aspx" class="lm"  target="main">学生信息修改</a></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td width="167" height="15"></td>
        </tr>
      </table>
      <table width="100" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="27" background="images/left_titlecoin.jpg"><table width="167" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="33">&nbsp;</td>
              <td width="134" align="left" class="left1">系统安全管理</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td height="60" valign="top" background="images/m12.jpg"><table width="98" border="0" cellspacing="0" cellpadding="0">
            <tr>
               <td width="10" height="10"></td>
            </tr>
          </table>
            <table width="153" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Database.aspx" class="lm"   target="main">数据备份恢复</a></td>
              </tr>            
               <tr>
                <td width="30" height="25" align="center"><img src="images/left_coin.gif" width="9" height="14" /></td>
                <td width="123" height="25" align="left"><a href="Thelog.aspx" class="lm"   target="main">系统操作日志</a></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td width="167" height="15"></td>
        </tr>
    </table>
      </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
