<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyDepartment.aspx.cs" Inherits="admin_ModifyDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 184px;
            text-align: right;
        }
        .auto-style2 {
            width: 340px;
        }

                   body {
	    margin: 0px;
            background-color: #F1F1F1;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>您当前的位置：院校信息管理&nbsp; &gt;&gt;&nbsp; 修改部门信息</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table style="width:100%; height: 113px;">
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">旧部门名称：</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             </td>
        </tr>
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">新部门名称：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  ForeColor="red" >提交</asp:LinkButton>
             </td>
        </tr>
    </table>
    </form>
</body>
</html>
