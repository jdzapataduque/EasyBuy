<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmGeneraPedido.aspx.cs" Inherits="EasyBuy.FrmGeneraPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Pedido Generado<asp:Image ID="Image6" runat="server" Height="24px" ImageUrl="~/Images/Success.png" Width="25px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Se ha enviado una Notificación a su correo electrónico</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="~/FrmInicio.aspx" Text="Volver a Inicio" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
