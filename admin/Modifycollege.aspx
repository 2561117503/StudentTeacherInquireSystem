<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifycollege.aspx.cs" Inherits="admin_Modifycollege" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 340px;
        }

                   .auto-style1 {
            width: 184px;
            text-align: right;
        }
                     body {
	    margin: 0px;
            background-color: #F1F1F1;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <table style="width:100%;">
        <tr>
            <td>您当前的位置：院校信息管理&nbsp; &gt;&gt;&nbsp; 修改专业信息</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table style="width:100%; height: 113px;">
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">旧学院名称：</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             </td>
        </tr>
        <tr>
             <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">新学院名称：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="126px"></asp:TextBox>
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
   
    <div>
    
    </div>
    </form>
</body>
</html>
