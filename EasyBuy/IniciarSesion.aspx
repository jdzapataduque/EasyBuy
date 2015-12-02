<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="IniciarSesion.aspx.vb" Inherits="EasyBuy.IniciarSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 55%;">
        <tr>
            <td class="auto-style1" colspan="2"><strong>Inicio de Sesión</strong></td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Ingrese Usuario:</strong></td>
            <td>
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Ingrese Contraseña:</strong></td>
            <td>
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:LinkButton ID="btnRecordarPWD" runat="server">Recordar Contraseña</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
