<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifyteacher.aspx.cs" Inherits="Modifyteacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link rel="stylesheet" type="text/css" href="style/frontStyleSheet.css" />
    <style type="text/css">
        .auto-style2 {
            width: 978px;
        }
        .auto-style3 {
            height: 91px;
        }
        .auto-style4 {
            width: 204px;
        }
        .auto-style5 {
            height: 91px;
            width: 204px;
        }
        .auto-style6 {
            width: 182px;
        }
        .auto-style7 {
            width: 182px;
            height: 27px;
        }
        .auto-style8 {
            height: 27px;
            width: 204px;
        }
        .auto-style9 {
            height: 27px;
        }
        .auto-style10 {
            height: 49px;
        }
        .auto-style11 {
            height: 92px;
        }
        .auto-style12 {
            width: 1257px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;" class="table1">
            <tr>
                <td class="tablefont1">&nbsp;操作步骤：查看您要修改的信息 >> 填好变更申请  >>  提交</td>
                <td>&nbsp;<a href="Default.aspx" color="#fff">首页</a></td>
            </tr>
        </table>

       
    </div>
    <table style="width: 100%; height: 493px;">
        <tr>
            <td class="auto-style2">
                <table style="width: 100%; height: 479px; margin-top: 0px;">
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">工号:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">姓名:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">性别:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">身份证号码:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">民族:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">电话:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style4" style="background-color: #F6F6F6">部门:</td>
                        <td style="background-color: #F6F6F6">
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style5" style="background-color: #F6F6F6">变更请求:</td>
                        <td class="auto-style3" style="background-color: #F6F6F6">
                            <asp:TextBox ID="TextBox1" runat="server" Height="68px" Width="518px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style8"></td>
                        <td class="auto-style9" style="background-color: #F6F6F6">&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">提交</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                
                <table>
                    <tr><td><p style="height: 305px" class="fontcolorexplain"><b>注意：</b><i>为保证信息的安全性，<br/>只允许您提交变更请求,管理员<br/>审核后会修改你的信息.查看您<br/>的信息，如果有误请在变更请求<br/>中填上您要修改的属性和内容。<br/>例如：姓名改为“张三”。</i> </p></td> </tr>
                    <tr><td class="auto-style11">&nbsp;</td> </tr>
                    <tr><td class="auto-style10"></td> </tr>
                </table>
            </td>
        </tr>
    </table>

        <table><tr><td class="auto-style12">
            <br />
            <br />
            <br /><br />
            </td></tr></table>

         <table class="footTable" >
            <tr>
                <td class="footTable">
                    <div  class="footTable">© yangenneng  地址：昆明市呈贡区云南师范大学 邮编：650500</div>
                </td>
            </tr>
        </table>

    </form>
    </body>
</html>
