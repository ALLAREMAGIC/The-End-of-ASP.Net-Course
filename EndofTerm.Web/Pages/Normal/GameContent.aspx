<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GameContent.aspx.cs" Inherits="Pages_Normal_GamesContent " %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>游戏详情</title>
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
        <div>
            <br />
            <br />
            <span style="vertical-align: middle; font-size: 30px;">游戏详情</span>
            <div class="gamecontentbox">
                <div>
                    <div style="height: 119px">
                        <asp:Image ID="ImgGameLogo" runat="server" CssClass="game-logo" />
                        <div style="float: left; width: 80%;">
                            <asp:Label ID="lblGameName" runat="server" CssClass="gamespan-title"></asp:Label>
                            <br />
                            <br />
                            <div class="gamespan-intro">
                                <asp:Label ID="lblGameIntro" runat="server" CssClass="gamespan-intro"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <asp:Label ID="lblGamePirce" runat="server" CssClass="game-price" ForeColor="White"></asp:Label>
                </div>
            </div>

            <asp:Panel ID="pnlMain" runat="server" Height="100%">
            </asp:Panel>
        </div>
    </form>
</body>
</html>