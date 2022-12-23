<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GamesIndex.aspx.cs" Inherits="Pages_Normal_GamesIndex" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>游戏索引</title>
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
            <span style="vertical-align: middle; font-size: 30px;">欢迎来到本网站</span>
            <asp:Panel ID="pnlMain" runat="server"></asp:Panel>
            <%--<div>
                <div class="typebox-title">
                    <span class="gamesbox-title">热门游戏</span>
                    <asp:HyperLink ID="hlTypeHot" runat="server" Text="游戏标题" CssClass="gamesbox-more">更多</asp:HyperLink>
                </div>
                <br />
                <div class="gamesbox">
                    <div class="oneline">
                        <div class="gamebox">
                            <asp:Image ID="Image1" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image2" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image3" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink5" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink6" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image4" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink7" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink8" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image5" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink9" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink10" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                    </div>
                    <div class="oneline">
                        <div class="gamebox">
                            <asp:Image ID="Image6" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink11" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink12" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image7" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink13" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink14" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image8" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink15" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink16" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image9" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink17" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink18" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image10" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink19" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink20" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="typebox-title">
                    <span class="gamesbox-title">全部游戏</span>
                    <asp:HyperLink ID="HyperLink21" runat="server" Text="游戏标题" CssClass="gamesbox-more">更多</asp:HyperLink>
                </div>
                <br />
                <div class="gamesbox">
                    <div class="oneline">
                        <div class="gamebox">
                            <asp:Image ID="Image11" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink22" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink23" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image12" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink24" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink25" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image13" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink26" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink27" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image14" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink28" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink29" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image15" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink30" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink31" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                    </div>
                    <div class="oneline">
                        <div class="gamebox">
                            <asp:Image ID="Image16" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink32" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink33" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image17" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink34" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink35" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image18" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink36" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink37" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image19" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink38" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink39" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                        <div class="gamebox">
                            <asp:Image ID="Image20" runat="server" CssClass="gamelogo" ImageUrl="~/Images/真人快打.png" />
                            <br />
                            <asp:HyperLink ID="HyperLink40" runat="server" Text="游戏标题" CssClass="gamespan-title"></asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink41" runat="server" Text="点击查看更多" CssClass="pressmore"></asp:HyperLink>
                        </div>
                    </div>
                </div>
        </div>
        </div>--%>
            <footer>
                <div>神奇望</div>
            </footer>
    </form>
</body>
</html>