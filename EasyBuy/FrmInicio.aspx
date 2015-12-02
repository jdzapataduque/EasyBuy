<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmInicio.aspx.cs" Inherits="EasyBuy.FrmInicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }

        .auto-style2 {
            font-size: medium;
            height: 29px;
        }

        .auto-style3 {
        }

        .auto-style4 {
            height: 23px;
        }

        .GrdProductos td, .GrdProductos th {
            text-align: center;
        }
    </style>

    <script type="text/javascript">
        function openModalForm(imagen, fila) {
            var left = (screen.width / 2) - (300 / 2);
            var top = (screen.height / 2) - (500 / 2);
            var returnValue = window.open('FrmDetalleArticulo.aspx?Imagen=' + imagen + '&Fila='+fila, '', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=300, height=500, top=' + top + ', left=' + left);
        }
    </script>

    <script type="text/javascript">
        function VerCarrito() {
            var left = (screen.width / 2) - (1000 / 2);
            var top = (screen.height / 2) - (700 / 2);
            var returnValue = window.open('FrmArticuloCarrito.aspx', '', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=1000, height=700, top=' + top + ', left=' + left);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtBuscarProducto" runat="server" Width="450px" Height="35px"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Categorías:</td>
            <td class="auto-style3" rowspan="13" colspan="2">
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <asp:GridView ID="GrdProductos" DataKeyNames="ID" CssClass="GrdProductos" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" HorizontalAlign="Center" Width="80%" OnSelectedIndexChanged="GrdProductos_SelectedIndexChanged" OnRowDataBound="GrdProductos_RowDataBound" CellSpacing="1" BackColor="Black">
                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="NOMBRE" HeaderText="Producto">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="STOCK" HeaderText="Stock">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRIPCION" HeaderText="Descripción">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PRECIO" HeaderText="Precio" DataFormatString="{0:C}">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MARCA" HeaderText="Marca">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="" ShowSelectButton="True" ButtonType="Image" HeaderText="Adicionar" SelectImageUrl="~/Images/VerMas.png">
                            <HeaderStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:CommandField>
                        <asp:TemplateField HeaderText="Ver">
                            <ItemTemplate>
                                <asp:Button ID="HLVerMas" runat="server" Text="Ver Artículo" />
                            </ItemTemplate>
                            <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                <asp:DropDownList ID="DdlCategorias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlCategorias_SelectedIndexChanged" Width="230px" Height="40px">
                    <asp:ListItem>Seleccione</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Marcas:</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DdlMarcas" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlMarcas_SelectedIndexChanged" Width="230px" Height="40px">
                    <asp:ListItem>Seleccione</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <%if (Session["sUsuario"] != null) %>
        <%{ %>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="HLActualizarInformacion" runat="server" NavigateUrl="~/FrmUsuario.aspx" Font-Size="Medium">Actualizar Información</asp:HyperLink>
                <asp:Image ID="Image6" runat="server" Height="23px" ImageUrl="~/Images/EditUser.png" Width="25px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HLConsultarPedidos" runat="server" Font-Size="Medium">Consultar Pedidos</asp:HyperLink>
                <asp:Image ID="Image7" runat="server" Height="23px" ImageUrl="~/Images/ConsultarPedidos.png" Width="25px" />
            </td>
        </tr>

        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/Carrito.png" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HLVerCarrito" runat="server" Font-Size="Medium" OnClick="VerCarrito();">Ver Carrito</asp:HyperLink>
            </td>
        </tr>
        <%} %>
    </table>
</asp:Content>
