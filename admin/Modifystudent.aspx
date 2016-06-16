<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modifystudent.aspx.cs" Inherits="admin_Modifystudent" %>

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
     <table><tr><td>您当前的位置：学生信息管理 >>  学生信息修改<br />
            <br /></td></tr></table>

      <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="1142px">
            <Columns>
                <asp:BoundField DataField="stuNum" HeaderText="学号" SortExpression="stuNum" />
                <asp:BoundField DataField="stuName" HeaderText="姓名" SortExpression="stuName" />
                <asp:BoundField DataField="stuSex" HeaderText="性别" SortExpression="stuSex" />
                <asp:BoundField DataField="stuID" HeaderText="身份证号码" SortExpression="stuID" />
                <asp:BoundField DataField="stuNational" HeaderText="民族" SortExpression="stuNational" />
                <asp:BoundField DataField="stuTel" HeaderText="电话号码" SortExpression="stuTel" />
                <asp:BoundField DataField="stuCollege" HeaderText="学院" SortExpression="stuCollege" />
                <asp:BoundField DataField="stuClass" HeaderText="专业" SortExpression="stuClass" />
                <asp:BoundField DataField="stuChangerequest" HeaderText="变更请求" SortExpression="stuChangerequest" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" >
                <ItemStyle ForeColor="#333333" />
                </asp:CommandField>
               </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTeacherInquireSystemconnectionStrings %>" DeleteCommand="DELETE FROM [studentInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [studentInfo] ([stuNum], [stuName], [stuSex], [stuID], [stuNational], [stuTel], [stuCollege], [stuClass], [stuChangerequest]) VALUES (@stuNum, @stuName, @stuSex, @stuID, @stuNational, @stuTel, @stuCollege, @stuClass, @stuChangerequest)" SelectCommand="SELECT * FROM [studentInfo]" UpdateCommand="UPDATE [studentInfo] SET [stuNum] = @stuNum, [stuName] = @stuName, [stuSex] = @stuSex, [stuID] = @stuID, [stuNational] = @stuNational, [stuTel] = @stuTel, [stuCollege] = @stuCollege, [stuClass] = @stuClass, [stuChangerequest] = @stuChangerequest WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stuNum" Type="String" />
                <asp:Parameter Name="stuName" Type="String" />
                <asp:Parameter Name="stuSex" Type="String" />
                <asp:Parameter Name="stuID" Type="String" />
                <asp:Parameter Name="stuNational" Type="String" />
                <asp:Parameter Name="stuTel" Type="String" />
                <asp:Parameter Name="stuCollege" Type="String" />
                <asp:Parameter Name="stuClass" Type="String" />
                <asp:Parameter Name="stuChangerequest" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="stuNum" Type="String" />
                <asp:Parameter Name="stuName" Type="String" />
                <asp:Parameter Name="stuSex" Type="String" />
                <asp:Parameter Name="stuID" Type="String" />
                <asp:Parameter Name="stuNational" Type="String" />
                <asp:Parameter Name="stuTel" Type="String" />
                <asp:Parameter Name="stuCollege" Type="String" />
                <asp:Parameter Name="stuClass" Type="String" />
                <asp:Parameter Name="stuChangerequest" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1158px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="学号"><ItemTemplate><%#Eval("stuNum") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="姓名"><ItemTemplate><%#Eval("stuName") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="性别"><ItemTemplate><%#Eval("stuSex") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="身份证号码"><ItemTemplate><%#Eval("stuID") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="民族"><ItemTemplate><%#Eval("stuNational") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="电话"><ItemTemplate><%#Eval("stuTel") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="所在学院"><ItemTemplate><%#Eval("stuCollege") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="专业"><ItemTemplate><%#Eval("stuClass") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="变更请求"><ItemTemplate><%#Eval("stuChangerequest") %></ItemTemplate></asp:TemplateField>
                <asp:TemplateField HeaderText="照片"><ItemTemplate><%#Eval("stuPic") %></ItemTemplate></asp:TemplateField>
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
