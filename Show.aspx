<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .textStyle{
            text-align:center;
        }
    </style>
    <link rel="stylesheet" href="style/frontStyleSheet.css" type="text/css" />
</head>
<body class="showBody">
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1322px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="学号" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuNum") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="姓名" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuName") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="性别" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuSex") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="身份证号码" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuID") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="民族" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuNational") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="电话" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuTel") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="学院" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuCollege") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="班级" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuClass") %></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
          <br />
        <br />
          <br />
        <table witdh="100%" background="images/head_bg.jpg" style="width: 1314px; height: 63px">
            <tr><td  witdh="100%" align="center" ><p class="frontmodify" style="color: #FFFFFF; font-size: large">修改信息</p></td></tr>
        </table>
      
        <br />
    </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="1318px" OnRowCommand="GridView2_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="学号"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuNum") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="姓名"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuName") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="性别"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuSex") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="身份证号码"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuID") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="民族"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuNational") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="电话"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuTel") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="学院"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuCollege") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="班级"  ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("stuClass") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="编辑"  ItemStyle-CssClass="textStyle">
                      <ItemTemplate><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="modify">提交变更请求</asp:LinkButton></ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
