<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thelog.aspx.cs" Inherits="admin_Thelog" %>

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
        <table><tr><td>您当前的位置：系统安全管理 >>  系统操作日志</td></tr></table>
    </div>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1148px">
            <Columns>
                <asp:BoundField DataField="loginname" HeaderText="登录名" SortExpression="loginname" />
                <asp:BoundField DataField="loginState" HeaderText="登陆状态" SortExpression="loginState" />
                <asp:BoundField DataField="loginTime" HeaderText="登录时间" SortExpression="loginTime" />
                <asp:BoundField DataField="loginIP" HeaderText="登陆IP" SortExpression="loginIP" />
                <asp:BoundField DataField="loginHostname" HeaderText="登陆主机名" SortExpression="loginHostname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentTeacherInquireSystemconnectionStrings %>" SelectCommand="SELECT [loginname], [loginState], [loginTime], [loginIP], [loginHostname] FROM [loginInfo]"></asp:SqlDataSource>



    </form>
</body>
</html>
