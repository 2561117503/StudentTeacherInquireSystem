<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Showteacher.aspx.cs" Inherits="Showteacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .textStyle{
            text-align:center;
        }
        .nodecoration{
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1335px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="工号" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaNum") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="姓名" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaName") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="性别" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaSex") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="身份证号码" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaID") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="民族" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaNational") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="电话" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaTel") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="部门" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaDepartment") %></ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>

        <br />
        <br />
        <br />
        <br />
        <br />
        <table witdh="100%" background="images/head_bg.jpg" style="width: 1326px; height: 63px">
            <tr><td  witdh="100%" align="center" ><p class="frontmodify" style="color: #FFFFFF; font-size: large">修改信息</p></td></tr>
        </table>     
        <br />

    </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="1329px"  OnRowCommand="GridView2_RowCommand" >
               <Columns>
                <asp:TemplateField HeaderText="工号" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaNum") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="姓名" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaName") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="性别" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaSex") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="身份证号码" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaID") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="民族" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaNational") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="电话" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaTel") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="部门" ItemStyle-CssClass="textStyle"><ItemTemplate><%#Eval("teaDepartment") %></ItemTemplate></asp:TemplateField>           
                   <asp:TemplateField HeaderText="编辑" ItemStyle-CssClass="textStyle">
                         <ItemTemplate><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="modify"  CssClass ForeColor="#000000"><span class="nodecoration">提交变更请求</span></asp:LinkButton></ItemTemplate>
                          <ItemStyle />
                   </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
