<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifyteacher.aspx.cs" Inherits="admin_Modifyteacher" %>

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
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table><tr><td>您当前的位置：教师信息管理 >>  教师信息修改<br />
            <br /></td></tr></table>




        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="1143px">
            <Columns>
                <asp:BoundField DataField="teaNum" HeaderText="工号" SortExpression="teaNum" />
                <asp:BoundField DataField="teaName" HeaderText="姓名" SortExpression="teaName" />
                <asp:BoundField DataField="teaSex" HeaderText="性别" SortExpression="teaSex" />
                <asp:BoundField DataField="teaID" HeaderText="身份证号码" SortExpression="teaID" />
                <asp:BoundField DataField="teaNational" HeaderText="民族" SortExpression="teaNational" />
                <asp:BoundField DataField="teaTel" HeaderText="电话" SortExpression="teaTel" />
                <asp:BoundField DataField="teaDepartment" HeaderText="所属部门" SortExpression="teaDepartment" />
                <asp:BoundField DataField="teaChangerequest" HeaderText="变更请求" SortExpression="teaChangerequest" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" >
                <ItemStyle ForeColor="#333333" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTeacherInquireSystemconnectionStrings %>" DeleteCommand="DELETE FROM [teacherInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [teacherInfo] ([teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest]) VALUES (@teaNum, @teaName, @teaSex, @teaID, @teaNational, @teaTel, @teaDepartment, @teaChangerequest)" SelectCommand="SELECT [teaNum], [teaName], [teaSex], [teaID], [teaNational], [teaTel], [teaDepartment], [teaChangerequest], [id] FROM [teacherInfo]" UpdateCommand="UPDATE [teacherInfo] SET [teaNum] = @teaNum, [teaName] = @teaName, [teaSex] = @teaSex, [teaID] = @teaID, [teaNational] = @teaNational, [teaTel] = @teaTel, [teaDepartment] = @teaDepartment, [teaChangerequest] = @teaChangerequest WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="teaNum" Type="String" />
                <asp:Parameter Name="teaName" Type="String" />
                <asp:Parameter Name="teaSex" Type="String" />
                <asp:Parameter Name="teaID" Type="String" />
                <asp:Parameter Name="teaNational" Type="String" />
                <asp:Parameter Name="teaTel" Type="String" />
                <asp:Parameter Name="teaDepartment" Type="String" />
                <asp:Parameter Name="teaChangerequest" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="teaNum" Type="String" />
                <asp:Parameter Name="teaName" Type="String" />
                <asp:Parameter Name="teaSex" Type="String" />
                <asp:Parameter Name="teaID" Type="String" />
                <asp:Parameter Name="teaNational" Type="String" />
                <asp:Parameter Name="teaTel" Type="String" />
                <asp:Parameter Name="teaDepartment" Type="String" />
                <asp:Parameter Name="teaChangerequest" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1147px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="工号"><ItemTemplate><%#Eval("teaNum") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="姓名"><ItemTemplate><%#Eval("teaName") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="性别"><ItemTemplate><%#Eval("teaSex") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="身份证号码"><ItemTemplate><%#Eval("teaID") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="民族"><ItemTemplate><%#Eval("teaNational") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="电话"><ItemTemplate><%#Eval("teaTel") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="所属部门"><ItemTemplate><%#Eval("teaDepartment") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="变更请求"><ItemTemplate><%#Eval("teaChangerequest") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="图片"><ItemTemplate><%#Eval("teaPic") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="操作">
                      <ItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="see" >详细</asp:LinkButton>
                      <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="edit" >编辑</asp:LinkButton>
                      <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="del" >删除</asp:LinkButton>
                   </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>




    </div>
    </form>
</body>
</html>
