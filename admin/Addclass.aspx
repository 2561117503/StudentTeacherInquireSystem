<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addclass.aspx.cs" Inherits="admin_Addclass" %>

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
        .auto-style4 {
            height: 52px;
        }
        .auto-style5 {
            width: 108px;
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
            width: 240px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 104px;
        }
        .auto-style9 {
            width: 706px;
        }
         .auto-style12 {
             width: 108px;
             height: 66px;
         }
         .auto-style13 {
             width: 240px;
             height: 66px;
         }
         .auto-style14 {
             height: 66px;
         }
         .auto-style15 {
             height: 27px;
         }
         .auto-style16 {
             width: 108px;
             height: 27px;
         }
         .auto-style17 {
             height: 27px;
             width: 240px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table>
            <tr><td>您当前的位置：院校信息管理 >> 添加专业信息</td></tr>
        </table>

    <table style="width: 1151px; height: 475px;">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <table style="width:100%; height: 631px;">
                    <tr>
                        <td class="auto-style4" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 添加专业信息</td>
                    </tr>
                     <tr>
                         <td class="auto-style12" >所属部门：</td>
                        <td class="auto-style13">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="147px" ValidationGroup="s1">

                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ValidationGroup="s1"></asp:RequiredFieldValidator>
                         </td>
                       
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">专业名称：</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="s1" Height="16px" Width="137px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="s1"></asp:RequiredFieldValidator>
                        </td>
                         <td class="auto-style7">
                             &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                       <td class="auto-style17">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ValidationGroup="s1"  ForeColor="red" >添加</asp:LinkButton>
                        </td>
                        <td class="auto-style15"></td>
                    </tr>
                    <tr>
                        <td>

                        </td></tr>
                      </table>
            </td>
         <%--   <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="className" HeaderText="专业名称" SortExpression="className" />
                        <asp:BoundField DataField="collegeName" HeaderText="所属学院" SortExpression="collegeName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTeacherInquireSystemconnectionStrings %>" DeleteCommand="DELETE FROM [classInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [classInfo] ([className], [collegeName]) VALUES (@className, @collegeName)" SelectCommand="SELECT [className], [collegeName], [id] FROM [classInfo]" UpdateCommand="UPDATE [classInfo] SET [className] = @className, [collegeName] = @collegeName WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="className" Type="String" />
                        <asp:Parameter Name="collegeName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="className" Type="String" />
                        <asp:Parameter Name="collegeName" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>--%>

             <%--第二列--%>
            <td>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="378px"  OnRowCommand="GridView1_RowCommand" ValidationGroup="s2">
                    <Columns>
                        <asp:TemplateField HeaderText="专业名称">
                            <ItemTemplate><%#Eval("className") %></ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="所属学院">
                            <ItemTemplate><%#Eval("collegeName") %></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="操作">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="edit"  ForeColor="red" >编辑</asp:LinkButton>                        
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("id")%>' CommandName="del"  ForeColor="red" > 删除</asp:LinkButton>
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