<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmUsuario.aspx.cs" Inherits="EasyBuy.FrmUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }

        .auto-style2 {
            font-size: medium;
            width: 280px;
            height: 29px;
        }

        .auto-style3 {
            height: 29px;
        }

        .auto-style4 {
            font-size: medium;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section id="register">
        <table style="width: 100%;">
            <tr>
                <td colspan="2">
                    <h2>Actualizar Información</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Cédula:</td>
                <td>
                    <asp:TextBox ID="txtCedula" runat="server" Width="330px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedula" CssClass="field-validation-error" ErrorMessage="El campo Cédula es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Nombres:</td>
                <td>
                    <asp:TextBox ID="txtNombres" runat="server" Width="330px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" CssClass="field-validation-error" ErrorMessage="El campo Nombres es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Apellidos</td>
                <td>
                    <asp:TextBox ID="txtApellidos" runat="server" Width="330px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApellidos" CssClass="field-validation-error" ErrorMessage="El campo Apellidos es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Número de Teléfono</td>
                <td>
                    <asp:TextBox ID="txtNumTelefono" runat="server" TextMode="Phone" Width="200px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumTelefono" CssClass="field-validation-error" ErrorMessage="El campo Número de Teléfono es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Departamento de Residencia:</td>
                <td>
                    <asp:TextBox ID="txtDeptoResidencia" runat="server" Width="330px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDeptoResidencia" CssClass="field-validation-error" ErrorMessage="El campo Departamento de Residencia es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Municipio de Residencia:</td>
                <td>
                    <asp:TextBox ID="txtMpioResidencia" runat="server" Width="330px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMpioResidencia" CssClass="field-validation-error" ErrorMessage="El campo Municipio de Residencia es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Dirección:</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" Width="330px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDireccion" CssClass="field-validation-error" ErrorMessage="El campo Dirección es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Sexo:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DdlSexo" runat="server" Height="25px" Width="340px">
                        <asp:ListItem Value="0">Seleccione</asp:ListItem>
                        <asp:ListItem Value="1">Femenino</asp:ListItem>
                        <asp:ListItem Value="2">Masculino</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" InitialValue="0" Display="Dynamic" ControlToValidate="DdlSexo" runat="server" ErrorMessage="Seleccione un sexo" CssClass="field-validation-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Fecha de Nacimiento:</td>
                <td>
                    <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtFechaNacimiento" CssClass="field-validation-error" ErrorMessage="El campo Fecha de Nacimiento es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Correo:</td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server" TextMode="Email" Width="330px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCorreo" CssClass="field-validation-error" ErrorMessage="El campo Correo es obligatorio." Display="Dynamic" />
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="El Correo no es válido" ControlToValidate="txtCorreo" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:CheckBox ID="chkModificarClave" runat="server" Style="font-size: small" Text="Activar si desea modificar su clave" TextAlign="Left" AutoPostBack="True" Width="500px" />
                </td>
            </tr>
            <% if (chkModificarClave.Checked) %>
            <%{ %>
            <tr>
                <td class="auto-style1">Clave:</td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtClave" CssClass="field-validation-error" ErrorMessage="El campo Clave es obligatorio." Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Confirmar Clave:</td>
                <td>
                    <asp:TextBox ID="txtConfirmarClave" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtConfirmarClave" CssClass="field-validation-error" ErrorMessage="Debe confirmar la clave." Display="Dynamic" />
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Display="Dynamic" Text="La contraseña no coincide." ControlToCompare="txtConfirmarClave" ControlToValidate="txtClave"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <%} %>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Información" Width="197px" OnClick="btnActualizar_Click" />
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" Width="135px" />
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="124px" PostBackUrl="~/FrmInicio.aspx" />
                </td>
            </tr>
        </table>
    </section>
</asp:Content>
