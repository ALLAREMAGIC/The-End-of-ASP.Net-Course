<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddType.aspx.cs" Inherits="Pages_Admin_TypeController" %>

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
        <div>
            <h2>添加游戏类型</h2>
            <div class="addgamebox">
                <div class="functionbtn">
                    类型名称：<asp:TextBox ID="tbTypeName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTypeName" runat="server" ErrorMessage="不能为空！" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="functionbtn">
                    <asp:Button ID="btnUploadNewType" runat="server" Text="点击上传" Height="33px" Width="118px" OnClick="btnUploadAll_Click" />
                    <br />
                    <asp:Label ID="lblTip" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>