﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户注册</title>
    <link href="Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-collapse: collapse;">
                <tr>
                    <td colspan="2">注册</td>
                </tr>
                <tr>
                    <td>用户名:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" ID="rfvName" runat="server" ErrorMessage="必填">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtPwd" Display="Dynamic" ForeColor="Red" ID="rfvPwd" runat="server" ErrorMessage="必填">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>确认密码:</td>
                    <td>
                        <asp:TextBox ID="txtPwdAgain" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtPwdAgain" Display="Dynamic" ForeColor="Red" ID="rfvPwdAgain" runat="server" ErrorMessage="必填">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:CompareValidator ControlToValidate="txtPwdAgain" ControlToCompare="txtPwd" Display="Dynamic" ForeColor="Red" ID="cvPwd" runat="server" ErrorMessage="2次密码不一致">
                        </asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnReg" runat="server" Text="立即注册" OnClick="BtnReg_Click" />
                    </td>
                </tr>
                <tr>
                    <td><a href="Login.aspx">我要登录</a></td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>