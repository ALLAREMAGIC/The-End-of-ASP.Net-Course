<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GamesIndex.aspx.cs" Inherits="_Default" %>

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
                <asp:LinkButton ID="lnkbtnPwd" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
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
            <span style="vertical-align: middle; font-size: 30px;">请选择游戏类别：</span>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="124px" Font-Bold="True" Font-Size="24px" Style="margin-top: 0px" DataSourceID="Games" DataTextField="TypeName" DataValueField="TypeId"></asp:DropDownList>
            <asp:SqlDataSource ID="Games" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
            <div class="gamebox">
                <img src="../../MyResources/LOGO/MW_Img.jpg" class="gamelogo" />
                <span class="gamespan-title">游戏标题</span>
                <br />
                <br />
                <span class="gamespan-intro">游戏简介</span>
            </div>
        </div>
    </form>
</body>
</html>