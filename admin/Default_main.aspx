<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_main.aspx.cs" Inherits="admin_Default_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link rel="stylesheet" href="../style/backStyleSheet.css" type="text/css" />   
    <style type="text/css">
        body {
	        margin: 0px;
            background-color: #F1F1F1;
            height: 349px;
        }
        .auto-style2 {
            text-align: right;
            width: 470px;
            height: 45px;
        }
        .auto-style3 {
            height: 45px;
        }
        .auto-style4 {
            text-align: right;
            width: 470px;
            height: 45px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            height: 45px;
        }
        .auto-style7 {
            height: 68px;
        }
    </style>
</head>
<body style=" padding:0;margin:0;">
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%; height: 36px;border:1;">
            <tr><td>您当前的位置：系统管理管理 >> 管理首页</td></tr>
        </table>
        <table style="border-style:none; border-color: inherit; border-width: 1; width: 100%; height: 298px; padding:0;margin:0;" border="0"; cellpadding="0" cellspacing="0" >
           
            <tr>
                <td class="auto-style4" style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;">&nbsp;学校名称：</td>
                 <td style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;" class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr style="margin:0px;padding:0px;">
                <td class="auto-style4" style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;">&nbsp;部门总数：</td>
                   <td style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;" class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                  </td>
            </tr>
            <tr>
                <td class="auto-style4" style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;">&nbsp;学院总数：</td>
                 <td style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;" class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style4" style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;">&nbsp;专业总数：</td>
                  <td style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;" class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>          
           
             <tr>
                <td class="auto-style4" style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;">&nbsp;教师人数：</td>
                  <td style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;" class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2" style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;">&nbsp;学生人数：</td>
                 <td style="padding: 0px; margin: 0px; border-color: #000000; border-width: 1px;" class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                 </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
