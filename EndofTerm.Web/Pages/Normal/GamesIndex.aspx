<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GamesIndex.aspx.cs" Inherits="Pages_Normal_GamesIndex" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
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
        <div>
            <br />
            <br />
            <span style="vertical-align: middle; font-size: 30px;">请选择游戏类别：</span> <span style="vertical-align: middle; font-size: 30px;">
                <asp:SqlDataSource ID="Type" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
            </span>
            <asp:DropDownList ID="ddlGametype" runat="server" Height="30px" Width="124px" Font-Bold="True" Font-Size="24px" Style="margin-top: 0px" DataSourceID="Type" DataTextField="TypeName" DataValueField="TypeId" OnSelectedIndexChanged="ddlGametype_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <%--<div class="gamebox">
                <asp:Image ID="ImgGameLogo1" runat="server" class="gamelogo" ImageUrl="~/Images/真人快打.png" />
                <asp:Label ID="lblGameName1" runat="server" Text="游戏标题" class="gamespan-title"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblGameIntro1" runat="server" Text="游戏简介" class="gamespan-intro" Height="16px"></asp:Label>
            </div>--%>
            <asp:Panel ID="pnlMain" runat="server" Height="100%">
            </asp:Panel>
        </div>
    </form>
</body>
</html>