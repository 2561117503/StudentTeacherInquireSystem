<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modefyclass.aspx.cs" Inherits="admin_Modefyclass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         body {
	    margin: 0px;
            background-color: #F1F1F1;
        }
        .auto-style2 {
            width: 340px;
        }

                   .auto-style1 {
            width: 184px;
            text-align: right;
        }
        .auto-style3 {
            width: 340px;
            height: 41px;
        }
        .auto-style4 {
            width: 184px;
            text-align: right;
            height: 41px;
        }
        .auto-style5 {
            height: 41px;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>您当前的位置：院校信息管理&nbsp; &gt;&gt;&nbsp; 修改专业信息</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table style="width:100%; height: 156px;">
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">旧专业名称：</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" ValidationGroup="s1"></asp:Label>
             </td>
        </tr>
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">新专业名称：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="s1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
             <td class="auto-style3"></td>
            <td class="auto-style4">所属专业：</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="144px" ValidationGroup="s1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  ValidationGroup="s1">提交</asp:LinkButton>
             </td>
        </tr>
    </table>
    </form>
    
</body>
</html>
