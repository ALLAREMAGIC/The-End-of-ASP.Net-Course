<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyGame.aspx.cs" Inherits="Pages_Admin_ModifyGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改游戏</title>
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
            <h2>修改游戏</h2>
            <div class="addgamebox">
                <div class="functionbtn">
                    游戏名称：
                    <asp:TextBox ID="tbGameName" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGameName" runat="server" ControlToValidate="tbGameName" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">不可为空</asp:RequiredFieldValidator>
                </div>
                <div class="functionbtn">
                    游戏类型：
                    <asp:DropDownList ID="ddlChooseType" runat="server" DataSourceID="SqlDataSourceType" DataTextField="TypeName" DataValueField="TypeId"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Type]"></asp:SqlDataSource>
                </div>
                <br />
                <div class="functionbtn">
                    游戏是否热门：<asp:CheckBox ID="cbIsHot" runat="server" />
                </div>
                <br />
                <div class="functionbtn">
                    游戏价格：
                    <asp:TextBox ID="tbGamePrice" runat="server" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGamePrice" runat="server" ControlToValidate="tbGamePrice" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">不可为空</asp:RequiredFieldValidator>
                </div>
                <br />
                <div class="functionbtn">
                    游戏介绍：
                    <asp:TextBox ID="tbGameIntro" runat="server" Height="77px" Width="300px" TextMode="MultiLine" Wrap="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvGameIntro" runat="server" ControlToValidate="tbGameIntro" ErrorMessage="rfvGameIntro" ForeColor="#FF3300">不可为空</asp:RequiredFieldValidator>
                    <br />
                </div>
                <br />
                <div class="functionbtn">
                    <span>logo上传：</span>
                    <div>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/MyResources/LOGO/MW_Img.jpg" Width="65px" Height="65px" ImageAlign="Left" />
                    </div>

                    <div>
                        <asp:FileUpload ID="fuLogo" runat="server" Width="300px" />
                        <br />
                        <asp:Label ID="lblImgTip" runat="server" ForeColor="#FF3300" Font-Size="Small"></asp:Label>
                        <asp:Button ID="btnUploadImg" runat="server" Text="上传" OnClick="btnUploadImg_Click" />
                    </div>
                </div>
                <br />
                <br />
                <br />
            </div>
            <div class="functionbtn">
                <asp:Button ID="btnUploadAll" runat="server" Text="点击上传全部" Height="33px" Width="118px" OnClick="btnUploadAll_Click" />
                <br />
                <asp:Label ID="lblTip" runat="server" Font-Size="Medium"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>