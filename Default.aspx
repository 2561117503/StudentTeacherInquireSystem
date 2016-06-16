<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生-教师信息查询</title>
    <link type="text/css" href="style/frontStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 433px;
            height: 60px;
        }
        .auto-style5 {
            text-align: right;
            width: 433px;
            height: 60px;
        }
        .auto-style6 {
            height: 60px;
        }
        .time{
            font-size:larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="headTable1">
            <tr>
                 <td width="925px"></td>
                 <td>
                     <table>
                         <tr>
                             <td> <a href="Default.aspx">首页&nbsp;&nbsp;|&nbsp;&nbsp;</a> </td>
                             <td> <a href="admin/NewLogin.aspx">管理员登陆&nbsp;&nbsp;|&nbsp;&nbsp;</a> </td>
                             <td> <a href="#">English&nbsp;&nbsp;</a> </td>
                         </tr>
                     </table>
                 </td>
                  <td></td>                     
                </td>
            </tr>
        </table>

        <table class="headTable2">
            <tr>
                <td width="180px"></td>
                <td width="120px"> <img src="images/head_logo1.png" height="60px"/> </td>
                <td width="650px">
                    <table>
                    <tr><td class="front1">云南师范大学学生-教师基本信息查询系统</td></tr>
                    <tr><td ><p class="front2"><b><i>Yunnan ShiFan DaXue Xuesheng-Jiaoshi Jiben Xinxi Chaxun Xitong</i></b></p></td></tr>
                  </table>
                </td>
                <td>
                         <asp:ScriptManager ID="ScriptManager1" runat="Server" ></asp:ScriptManager>
                           <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
                                    <ContentTemplate> 
                                        <asp:Label name="Timer1" ID="Label1" runat="server" Text="Label" CssClass="time"></asp:Label>
                                        <asp:Timer ID="Timer1" runat="server" Interval="1000"></asp:Timer>
                                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="time"></asp:Label>
                                    </ContentTemplate>                  
                           </asp:UpdatePanel>  
                </td>
            </tr>
        </table>

        <table class="headTable3" width="100%">
            <tr>
                 <td width="170px"></td>
                 <td >
                     <table class="front3">
                         <tr>
                             <td><b>操作步骤:</b>&nbsp;&nbsp;</td>
                              <td>&nbsp;&nbsp;1.选择查询方式&nbsp;&nbsp;&nbsp;</td>
                             <td> &nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp; </td>
                              <td>&nbsp;&nbsp;2.输入查询内容&nbsp;&nbsp;&nbsp;</td>
                             <td> &nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;</td>
                              <td>&nbsp;&nbsp;3.查看详细信息&nbsp;&nbsp;&nbsp;</td>
                         </tr>
                     </table>
                 </td>
                 <td width="170px"></td>
            </tr>
           
        </table>


        <table class="contentTable1" align="center">
            <tr><td> 首页&nbsp;>&nbsp;信息查询&nbsp;</td></tr>           
        </table>
         <table class="contentTable2" align="center">
            <tr><td> 
               
                <table width="100%">
                     <br />
                     <tr><td class="tdcenter"><p class="front4">学生-教师基本信息查询</p></td></tr>                      
                     <br />
                     <tr><td>

                         <table style="width: 100%;" class="contentTable2">
                             <tr>
                               
                                 <td class="auto-style5">查询对象：</td>
                                  <td class="auto-style6">
                                      <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="199px" AutoPostBack='true' OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                      </asp:DropDownList>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="请选择要查询的对象"></asp:RequiredFieldValidator>
                                 </td>
                              
                             </tr>
                         
                             <tr>
                               
                                 <td class="auto-style5">查询方式：</td>
                                  <td class="auto-style6">
                                      <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="199px" AutoPostBack='true'>
                                      </asp:DropDownList>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="请选择查询方式"></asp:RequiredFieldValidator>
                                 </td>
                              
                             </tr>
                         
                             <tr >
                                 <td class="auto-style5">查询内容：</td>
                                   <td class="auto-style6"><asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="196px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="请输入要查询的关键字"></asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                         

                             
                             <tr >
                                 <td class="auto-style2"></td>
                                   <td class="auto-style6">&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/inquiries.jpg" OnClick="ImageButton1_Click" /></td>
                             </tr>
                         </table>


                    </td></tr> 
                </table>
               
            </td></tr>           
        </table>


        <table height="25px">
            <tr>
                <td>
                    
                </td>
            </tr>
        </table>

          <table class="footTable" >
            <tr>
                <td class="footTable">
                    <div  class="footTable">© yangenneng  地址：昆明市呈贡区云南师范大学 邮编：650500</div>
                </td>
            </tr>
        </table>

    </div>
    </form>
  
</body>
</html>
