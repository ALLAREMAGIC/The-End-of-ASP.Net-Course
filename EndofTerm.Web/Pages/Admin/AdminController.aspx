<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminController.aspx.cs" Inherits="Pages_Admin_AdminController" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理员功能菜单</title>
    <link href="../../Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <img src="../../MyResources/LOGO/MW_Img.jpg" class="logo" />
            <div class="headerbox">
                <asp:Label ID="lblWelcome" runat="server" Text="您还未登录！" ForeColor="#0066FF"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnPwd0" runat="server" ForeColor="#0066FF" Visible="True" PostBackUrl="~/Pages/Normal/GamesIndex.aspx">首页</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnManage" runat="server" ForeColor="#0066FF" Visible="false" PostBackUrl="~/Pages/Admin/AdminController.aspx">系统管理</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="#0066FF" Visible="false" PostBackUrl="~/Login.aspx">前往登录</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogout" runat="server" ForeColor="#0066FF" Visible="false" OnClick="LnkbtnLogout_Click">退出登录</asp:LinkButton>
            </div>
        </header>
        <h2>管理员功能菜单</h2>
        <div class="addgamebox">
            <div class="headerbox">
                <asp:LinkButton ID="lnkbtnToAddGame" runat="server" PostBackUrl="~/Pages/Admin/AddGame.aspx" Font-Size="20px">添加游戏</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="lnkbtnToModifyGame" runat="server" PostBackUrl="~/Pages/Admin/ConfirmModifiedGame.aspx" Font-Size="20px">修改游戏数据</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="lnkbtnToAddType" runat="server" PostBackUrl="~/Pages/Admin/AddType.aspx" Font-Size="20px">添加种类</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="lnkbtnToModifyType" runat="server" PostBackUrl="~/Pages/Admin/ModifyType.aspx" Font-Size="20px">修改种类</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>