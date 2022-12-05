<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminController.aspx.cs" Inherits="Pages_Admin_AdminController" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理员功能</title>
    <link href="../../Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <img src="../../MyResources/LOGO/MW_Img.jpg" class="logo" />
            <div class="status">
                <asp:Label ID="lblWelcome" runat="server" Text="您还未登录！"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnPwd0" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Pages/Normal/GamesIndex.aspx">首页</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnPwd" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnManage" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Pages/Admin/AdminController.aspx">系统管理</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Login.aspx">前往登录</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogout" runat="server" ForeColor="White" Visible="false" OnClick="LnkbtnLogout_Click">退出登录</asp:LinkButton>
            </div>
        </header>
        <h2>管理员功能</h2>
        <div class="addgamebox">
            <div>
                <asp:LinkButton ID="lnkbtnToAddGame" runat="server" PostBackUrl="~/Pages/Admin/AddGame.aspx" Font-Size="20px">单个游戏添加</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="lnkbtnToAddType" runat="server" PostBackUrl="~/Pages/Admin/AddType.aspx" Font-Size="20px">游戏类别添加</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="lnkbtnToModifyGame" runat="server" PostBackUrl="~/Pages/Admin/ConfirmModifiedGame.aspx" Font-Size="20px">单个游戏内容修改</asp:LinkButton>
                <br />
                <br />
                <asp:LinkButton ID="lnkbtnToModifyType" runat="server" PostBackUrl="~/Pages/Admin/ModifyType.aspx" Font-Size="20px">游戏类别修改</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>