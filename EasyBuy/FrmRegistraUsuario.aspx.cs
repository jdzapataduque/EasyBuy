using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using libClases6_8.Clases.Proyecto;
using EasyBuyCtrl;

namespace EasyBuy
{
    public partial class FrmRegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistarse_Click(object sender, EventArgs e)
        {
            UsuarioENT oUsuario = new UsuarioENT();
            oUsuario.Cedula = HttpUtility.HtmlDecode(txtCedula.Text.Trim());
            oUsuario.Nombres = HttpUtility.HtmlDecode(txtNombres.Text.Trim());
            oUsuario.Apellidos = HttpUtility.HtmlDecode(txtApellidos.Text.Trim());
            oUsuario.Telefono = HttpUtility.HtmlDecode(txtNumTelefono.Text.Trim());
            oUsuario.DeptoResidencia = HttpUtility.HtmlDecode(txtDeptoResidencia.Text.Trim());
            oUsuario.MpioResidencia = HttpUtility.HtmlDecode(txtMpioResidencia.Text.Trim());
            oUsuario.Direccion = HttpUtility.HtmlDecode(txtDireccion.Text.Trim());
            oUsuario.Sexo = DdlSexo.SelectedItem.Text;
            oUsuario.FechaNacimiento = Convert.ToDateTime(HttpUtility.HtmlDecode(txtFechaNacimiento.Text.Trim()));
            oUsuario.Correo = HttpUtility.HtmlDecode(txtCorreo.Text.Trim());
            oUsuario.Clave = HttpUtility.HtmlDecode(txtClave.Text.Trim());

            CtrlUsuario oCtrlUsuario = new CtrlUsuario();

            if (oCtrlUsuario.RegistrarUsuario(oUsuario))
            {
                FailureText.Text = oUsuario.Error;
                this.LimpiarCampos();
                //Enviar Correo
            }
            else
            {
                FailureText.Text = oUsuario.Error;
                oUsuario = null;
            }

            oUsuario = null;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            this.LimpiarCampos();
        }

        private void LimpiarCampos()
        {
            txtCedula.Text = "";
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtNumTelefono.Text = "";
            txtDeptoResidencia.Text = "";
            txtMpioResidencia.Text = "";
            txtDireccion.Text = "";
            DdlSexo.SelectedIndex = 0;
            txtFechaNacimiento.Text = "";
            txtCorreo.Text = "";
            txtClave.Text = "";
            txtConfirmarClave.Text = "";
        }
    }
}