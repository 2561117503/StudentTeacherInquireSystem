<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生-教师信息查询系统后台登陆系统</title>
    <link href="../style/backStyleSheet.css" type="text/css" rel="stylesheet"/>

    <style type="text/css">
        .auto-style2 {
            text-align: right;
            width: 301px;
        }
        .auto-style3 {
            width: 301px;
        }
        .auto-style4 {
            font-size: 23px;
            width: 620px;
            color: #EC8400;
        }
    .auto-style5 {
           font-size:13px;
            width: 620px;
            color:#2EAFBB;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" height="625px" >
            <tr>
                <td height="625px" background="images/login_backgroud.jpg">
                   
                    <table style="width: 100%; margin-top: 0px;">
                        <tr>
                            <td class="auto-style4" rowspan="2">
                                <asp:Image ID="Image1" runat="server" Height="39px" ImageUrl="~/admin/images/backlogin_Logo.png" Width="616px" />
&nbsp; </td>
                            <td class="auto-style2"><img src="images/login_user.jpg" /></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="149px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><img src="images/login_password.jpg" /></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="149px" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><b><i></i></b></td>
                            <td class="auto-style2"><img src="images/login_check.jpg" /></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="21px" Width="148px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/admin/Verifycode.aspx" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="验证码不能为空"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style4"></td>
                           <td class="auto-style3">&nbsp;</td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/admin/images/login_login.jpg" Width="156px" OnClick="ImageButton1_Click" />
                            </td>
                        </tr>

                    </table>
                   
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
