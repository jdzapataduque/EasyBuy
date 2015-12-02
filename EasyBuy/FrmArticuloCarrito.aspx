<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmArticuloCarrito.aspx.cs" Inherits="EasyBuy.FrmArticuloCarrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            font-size: medium;
        }
        .grvArticuloCarrito td, .grvArticuloCarrito th {
            text-align: center;
        }
    </style>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 59%;">
                <tr>
                    <td class="auto-style1">Carrito:</td>
                </tr>
                <tr>
                    <td>Artículos Seleccionados:</td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal runat="server" ID="FailureText" /></td>
                    </tr>
            <tr>
                <td style="font-size: x-small">
                    <asp:GridView ID="grvArticuloCarrito" CssClass="grvArticuloCarrito" runat="server" Width="815px" AutoGenerateColumns="False" BackColor="Black" CellPadding="4" Height="136px" CellSpacing="1" ForeColor="#333333" OnRowDeleting="grvArticuloCarrito_RowDeleting">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField HeaderText="Artículo" DataField="Nombre" >
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Cantidad" DataField="Cantidad" >
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Precio" DataField="Precio" DataFormatString="{0:C}" >
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Subtotal" DataFormatString="{0:C}" DataField="Subtotal" >
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            </asp:BoundField>
                            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Images/delete.png" DeleteText="Eliminar Artículo" HeaderText="Eliminar Artículo" ShowDeleteButton="True">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            </asp:CommandField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                </tr>
            <tr>
                <td>
                        <asp:Literal runat="server" ID="LitTotal" />
                </td>
                </tr>
            <tr>
                <td>
                    <asp:Button ID="btnConfirmarCompra" runat="server" Text="Confirmar Compra" />
                    <asp:Button ID="btnCerrar" runat="server" Text="Cerrar" Width="144px" />
                </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
