<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit"
 TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>运用基于Web服务的AutoCompleteExtender控件</title>
</head>
<body>
<form id="form1" runat="server">
  <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <ajaxToolkit:AutoCompleteExtender ID="txtSearch_AutoCompleteExtender" runat="server" MinimumPrefixLength="1" ServiceMethod="GetStrings" ServicePath="SearchService.asmx" TargetControlID="txtSearch">
    </ajaxToolkit:AutoCompleteExtender>
    <asp:Button ID="btnSearch" runat="server" OnClick="BtnSearch_Click" Text="搜索" />
    <asp:GridView ID="gvProduct" runat="server">
    </asp:GridView>
  </div>
</form>
</body>
</html>
