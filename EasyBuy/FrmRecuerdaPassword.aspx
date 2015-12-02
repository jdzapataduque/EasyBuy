<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmRecuerdaPassword.aspx.cs" Inherits="EasyBuy.FrmRecuerdaPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 348px;
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
                    <h2>Recordar Clave</h2>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    <fieldset>
                        <legend>Formulario de Recordar Clave</legend>
                        <ol>
                            <li>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtUsuario">Nombre de usuario</asp:Label>
                                <asp:TextBox runat="server" ID="txtUsuario" Width="315px" />
                            </li>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" CssClass="field-validation-error" ErrorMessage="El campo de nombre de usuario es obligatorio." Display="Dynamic" />
                        </ol>
                        <asp:Button ID="btnRecordarClave" runat="server" Text="Recordar Clave" OnClick="btnRecordarClave_Click" />
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
