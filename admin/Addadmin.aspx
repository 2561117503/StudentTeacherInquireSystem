<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addadmin.aspx.cs" Inherits="admin_Addadmin" %>

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
                     height: 263px;
                 }

                 .auto-style1 {
                     text-align: right;
                     width: 553px;
                 }
                 .auto-style2 {
                     width: 553px;
                 }
                 .auto-style3 {
                     text-align: center;
                     height: 53px;
                 }

     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table><tr><td>您当前的位置: 系统信息管理>>管理员设置</td></tr></table>
        <table style="width: 100%; height: 228px;">
            <tr>
                <td colspan="2" class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加管理员</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;管理员姓名：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;管理员密码：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style1">&nbsp;确认密码：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#333333" OnClick="LinkButton1_Click">提交</asp:LinkButton>
                 </td>
            </tr>
        </table>


        <table>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
