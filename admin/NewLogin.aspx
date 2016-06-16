<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewLogin.aspx.cs" Inherits="admin_NewLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登陆</title>

<link rel="stylesheet" href="style/StyleSheet.css" type="text/css" />

</head>
<body class="loginbody">
    <form id="form1" runat="server">
    <div class="loginmain">
            <div class="divstylemain">
            </div>
            <div>
                <span class="logostyle">管理员登陆</span>
            </div>
            <div id="name" class="divstyle">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/user.png" />               
                <asp:TextBox ID="TextBox1" runat="server" class="controlstyle" BorderWidth="1" BorderColor="#00FF99"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="姓名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div id="psw" class="divstyle">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/admin/images/psw.png" />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="controlstyle" BorderWidth="1" BorderColor="#00FF99"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div id="yzm" class="divstyle">
              
                <asp:Image ID="Image3" runat="server" ImageUrl="~/admin/images/psw1.png" />
                <asp:TextBox ID="TextBox3" runat="server" class="controlstyle3" BorderWidth="1" BorderColor="#00FF99"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" CssClass="controlImagestyle" BorderWidth="1" BorderColor="#00FF99" runat="server" ImageUrl="~/admin/verifycode.aspx" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="验证码不能空" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>
           <div class="divstyle">&nbsp;</div>
            <div id="login" class="divstyle" >
                <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/admin/images/submit.png" Width="151px" OnClick="ImageButton2_Click" />
                &nbsp;&nbsp;
            </div>
    </div>
    </form>
</body>
</html>

