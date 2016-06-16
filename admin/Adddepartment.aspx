<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adddepartment.aspx.cs" Inherits="Adddepartment" %>

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
        .auto-style3 {
            width: 82px;
            height: 32px;
        }
        .auto-style4 {
            height: 52px;
        }
        .auto-style5 {
            width: 82px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
            width: 169px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 202px;
        }
        .auto-style9 {
            width: 657px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr><td>您当前的位置：院校信息管理 >> 添加部门信息</td></tr>
        </table>
    <table style="width: 1156px; height: 475px;">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <table style="width:97%;">
                    <tr>
                        <td class="auto-style4" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 添加部门信息</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">部门名称：</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                         <td class="auto-style7">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">添加</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                       
                    </tr>
                </table>
            </td>
          <%--  <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="margin-top: 0px" Width="272px">
                    <Columns>
                        <asp:BoundField DataField="departmentName" HeaderText="部门名称" SortExpression="departmentName" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" >
                        <ItemStyle ForeColor="#333333" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTeacherInquireSystemconnectionStrings %>" DeleteCommand="DELETE FROM [departmentInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [departmentInfo] ([departmentName]) VALUES (@departmentName)" SelectCommand="SELECT [departmentName], [id] FROM [departmentInfo]" UpdateCommand="UPDATE [departmentInfo] SET [departmentName] = @departmentName WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="departmentName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="departmentName" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>--%>
            
            <%--第二列--%>
            <td>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="204px"  OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="部门名称">
                            <ItemTemplate><%#Eval("departmentName") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="edit">编辑</asp:LinkButton>
                           <%-- </ItemTemplate>
                             <ItemTemplate>--%>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="del">删除</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </td>


        </tr>
    </table>
    </div>
    </form>
</body>
</html>
