<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplateMoney.aspx.cs" Inherits="WebApplication1.ComplateMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <table>
                <tr>
                    <td>存款</td>
                    <td><asp:TextBox ID="txtMoney" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>年收入</td>
                    <td><asp:TextBox ID="txtMoneyOfYear" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>收益率</td>
                    <td><asp:TextBox ID="txtPoint" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                    <asp:Button ID="btnCompalte" runat="server" OnClick="btnCompalte_Click" Text="计算结果" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
