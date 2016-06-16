<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detailstudent.aspx.cs" Inherits="admin_Detailstudent" %>

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
              width: 265px;
              text-align:right;
          }
          .auto-style2 {
              width: 252px;
          }
          .auto-style3 {
              width: 174px;
          }
          .auto-style4 {
              height: 36px;
          }
          .auto-style5 {
              width: 265px;
              text-align: right;
              height: 36px;
          }
          .auto-style6 {
              width: 252px;
              height: 36px;
          }
          .auto-style7 {
              width: 174px;
              height: 36px;
          }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table><tr><td>您当前的位置：学生信息管理  >>  详细信息查看<br />
        <br />
        </td></tr></table>


        <table style="width:100%; height: 361px;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">学号：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td rowspan="6" class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Width="230px" Height="230px"></asp:Image>
                </td>
                 <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">姓名：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                 <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">性别：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                 <td>&nbsp;</td>
            </tr>
              <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">身份证号码：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                  </td>
                   <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">名族：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">电话：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">所在学院：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                 </td>
                <td class="auto-style3">&nbsp;</td> <td>&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">专业：</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                 </td>
                <td class="auto-style3">&nbsp;</td> <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">变更请求：</td>
                <td class="auto-style6">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                 </td>
                <td class="auto-style7"></td> <td class="auto-style4"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
