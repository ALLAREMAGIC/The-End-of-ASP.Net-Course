<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmModifiedGame.aspx.cs" Inherits="Pages_Admin_ConfirmModifiedGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <img src="../../MyResources/LOGO/MW_Img.jpg" class="logo" />
            <div class="status">
                <asp:Label ID="lblWelcome" runat="server" Text="您还未登录！"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnPwd0" runat="server" ForeColor="White" Visible="True" PostBackUrl="~/Pages/Normal/GamesIndex.aspx">首页</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnManage" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Pages/Admin/AdminController.aspx">系统管理</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Login.aspx">前往登录</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogout" runat="server" ForeColor="White" Visible="false" OnClick="LnkbtnLogout_Click">退出登录</asp:LinkButton>
            </div>
        </header>
        <h2>选择一个游戏进行修改</h2>
        <div class="addgamebox">
            <div class="functionbtn">
                游戏名称：
                    <asp:DropDownList ID="ddlChooseGame" runat="server" DataSourceID="SqlDataSourceGame" DataTextField="Name" DataValueField="GameId"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceGame" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Games]"></asp:SqlDataSource>
            </div>
            <div class="functionbtn">
                <asp:Button ID="Button1" runat="server" Text="确定修改该游戏" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="lblTip" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>