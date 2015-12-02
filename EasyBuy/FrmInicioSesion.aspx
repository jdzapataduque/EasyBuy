<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmInicioSesion.aspx.cs" Inherits="EasyBuy.IniciarSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 339px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="loginForm">
        <table>
            <tr>
                <td class="auto-style1">
                    <h2>Iniciar Sesión</h2>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    <fieldset>
                        <legend>Formulario de inicio de sesión</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtUsuario">Nombre de usuario</asp:Label>
                                <asp:TextBox runat="server" ID="txtUsuario" Width="315px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio." Display="Dynamic" />
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="txtClave">Contraseña</asp:Label>
                                <asp:TextBox runat="server" ID="txtClave" TextMode="Password" Width="317px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClave" CssClass="field-validation-error" ErrorMessage="El campo de contraseña es obligatorio." Display="Dynamic" />
                            </li>
                        </ol>
                        <asp:Button ID="btnIniciarSesion" runat="server" CommandName="Login" Text="Iniciar sesión" OnClick="btnIniciarSesion_Click" />
                        <asp:HyperLink runat="server" ID="HyperLink1" ViewStateMode="Disabled" NavigateUrl="~/FrmRecuerdaPassword.aspx">Recordar Clave</asp:HyperLink>
                    </fieldset>
                </td>
            </tr>
        </table>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" NavigateUrl="~/FrmRegistroUsuario.aspx">Registrarse</asp:HyperLink>
            si no tiene una cuenta.
        </p>
    </section>
</asp:Content>
