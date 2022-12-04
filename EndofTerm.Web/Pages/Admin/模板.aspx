<%@ Page Language="C#" AutoEventWireup="true" CodeFile="模板.aspx.cs" Inherits="Pages_Admin_TypeController" %>

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
            <img src="../../MyResources/LOGO/MW_Img.jpg" style="vertical-align: middle; height: 35px; width: 35px; float: left;" />
            <div class="status">
                <asp:Label ID="lblWelcome" runat="server" Text="您还未登录！"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnPwd" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnManage" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Admin/Default.aspx">系统管理</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Login.aspx">前往登录</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="lnkbtnLogout" runat="server" ForeColor="White" Visible="false" OnClick="LnkbtnLogout_Click">退出登录</asp:LinkButton>
            </div>
        </header>
    </form>
</body>
</html>