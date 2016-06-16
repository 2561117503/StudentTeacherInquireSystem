<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Database.aspx.cs" Inherits="admin_Database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

          body {
	             margin: 0px;
                     background-color: #F1F1F1;
                     height: 504px;
                 }

        .auto-style1 {
            width: 108px;
        }
        .auto-style2 {
            height: 52px;
            text-align:center;
        }
        .auto-style3 {
            width: 204px;
            text-align:right;
            height: 61px;
        }
        .auto-style4 {
            width: 108px;
            height: 48px;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            width: 204px;
            text-align: right;
            height: 50px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            height: 61px;
        }
        .auto-style9 {
            width: 509px;
        }
        .auto-style10 {
            width: 204px;
        }
        .auto-style11 {
            width: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                <table><tr><td>您当前的位置：系统安全管理 >>  数据备份恢复</td></tr></table>
    </div>




        <table style="width:100%;">
            <tr>
                <td class="auto-style9">&nbsp;<table style="width:95%; height: 188px; margin-bottom: 20px;">
            <tr>
                <td colspan="2" class="auto-style2">数据库备份</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="点击备份" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server">备份数据库下载地址</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
                </td>

                <td class="auto-style11" style="background-color: #2EAFBB">&nbsp;</td>

                <td>&nbsp;<table style="width:100%; height: 222px;">
            <tr>
                <td colspan="2" class="auto-style2">数据库恢复</td>
            </tr>
            <tr>
                <td class="auto-style6">第一步：</td>
                <td class="auto-style7">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="387px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">第二步：</td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" Text="点击恢复数据库" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                 <td>
                     <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
                </td>
            </tr>
        </table>




    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>




    </form>
    </body>
</html>
