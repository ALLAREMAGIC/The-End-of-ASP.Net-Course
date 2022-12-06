<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link href="Styles/Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }

        .auto-style2 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="addgamebox" style="width: 300px">
            <div class="headerbox" style="float: none;">
                <table style="line-height: 40px; text-align: center; margin: auto; width: 280px;">
                    <tr>
                        <td colspan="2" class="auto-style1">
                            <h2>登录</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>用户名:</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" ID="rfvName" runat="server" ErrorMessage="必填"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>密码:</td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ControlToValidate="txtPwd" Display="Dynamic" ForeColor="Red" ID="rfvPwd" runat="server" ErrorMessage="必填"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <asp:Button ID="btnLogin" runat="server" Text="立即登录" OnClick="BtnLogin_Click" CssClass="niceButton2" />
                        </td>
                    </tr>
                    <tr>
                        <td><a href="NewUser.aspx">
                            <h4>我要注册！</h4>
                        </a></td>
                        <td colspan="2">
                            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>