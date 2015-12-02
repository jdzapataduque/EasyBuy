<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmDetalleArticulo.aspx.cs" Inherits="EasyBuy.FrmDetalleArticulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
    <base target="_self" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="width: auto">
        <table style="width: 24%;">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="300px" Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Cantidad:</td>
                    <td>
                        <asp:TextBox ID="txtCantidad" runat="server" Width="97px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" CssClass="field-validation-error" ErrorMessage="Debe especificar una cantidad" Display="Dynamic" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: left">
                        <asp:Button ID="Button1" runat="server" Style="text-align: center" Text="Adicionar" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
