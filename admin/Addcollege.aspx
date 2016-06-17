<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addcollege.aspx.cs" Inherits="admin_Addcollege" %>

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
            width: 660px;
            
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
            width: 280px;
        }
        .auto-style9 {
            width: 1336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr><td>您当前的位置：院校信息管理 >> 添加学院信息</td></tr>
        </table>
    <table style="width: 1153px; height: 475px;">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style4" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加学院信息</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">学院名称：</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                         <td class="auto-style7">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  ForeColor="red" >添加</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                       
                    </tr>
                </table>
            </td>
            <td class="auto-style1">
               <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" style="margin-top: 0px" Width="272px">
                    <Columns>
                        <asp:BoundField DataField="collegeName" HeaderText="学院名称" SortExpression="collegeName" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" >
                        <ItemStyle ForeColor="#333333" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTeacherInquireSystemconnectionStrings %>" DeleteCommand="DELETE FROM [collegeInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [collegeInfo] ([collegeName]) VALUES (@collegeName)" SelectCommand="SELECT [collegeName], [id] FROM [collegeInfo]" UpdateCommand="UPDATE [collegeInfo] SET [collegeName] = @collegeName WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="collegeName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="collegeName" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>--%>


                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="243px"  OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="学院名称" >
                            <ItemTemplate><%#Eval("collegeName") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="edit"  ForeColor="red" >编辑</asp:LinkButton>
                           <%-- </ItemTemplate>
                             <ItemTemplate>--%>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="del"  ForeColor="red" >删除</asp:LinkButton>
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
