<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editstudent.aspx.cs" Inherits="admin_Editstudent" %>

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
        .auto-style1 {
            width: 216px;
            text-align:right;
        }
        .auto-style2 {
            width: 293px;
        }
        .auto-style3 {
            width: 188px;
        }
        #form1 {
            height: 434px;
        }
    </style>
</head>
<body style="height: 459px">
    <form id="form1" runat="server">
    <div>
    <table><tr><td>您当前的位置: 学生信息管理 >> 学生信息修改</td></tr></table>
    </div>



    <table style="width:100%; height: 376px;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">学号：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">姓名：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">性别：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">身份证号码：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">民族：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">电话：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">所在学院：</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="147px" onselectedindexchanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">专业：</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="146px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">照片：</td>
            <td class="auto-style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
             </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">变更请求：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
             </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">修改</asp:LinkButton>
             </td>
            <td>&nbsp;</td>
        </tr>
    </table>



    </form>
    </body>
</html>
