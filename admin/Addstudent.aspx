<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addstudent.aspx.cs" Inherits="admin_Addstudent" %>

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
             width: 406px;
             text-align: right;
         }
         .auto-style2 {
             width: 406px;
             height: 20px;
             text-align:right;
         }
         .auto-style3 {
             height: 20px;
         }
         #form1 {
             height: 323px;
         }
         .auto-style4 {
             width: 406px;
         }
         .auto-style5 {
             width: 406px;
             text-align: right;
             height: 20px;
         }
         .auto-style6 {
             height: 20px;
         }
         .auto-style7 {
             width: 406px;
             text-align: right;
             height: 29px;
         }
         .auto-style8 {
             height: 29px;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table><tr><td>您当前的位置：学生信息管理 >>  学生信息添加<br />
            <br />
            <br />
            <br />
            <br />
            </td></tr></table>



    </div>
    <table style="width:100%; height: 331px;">
        <tr>
            <td class="auto-style1">学号：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">姓名：</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">性别：</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style1">身份证号码：</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td class="auto-style1">民族：</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">电话号码：</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td class="auto-style7">学院：</td>
            <td class="auto-style8">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="170px" onselectedindexchanged="DropDownList1_SelectedIndexChanged1" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style5">专业：</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="170px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style5">头像：</td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#333333" OnClick="LinkButton1_Click">提交</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
