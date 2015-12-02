using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EasyBuyCtrl;
using libClases6_8.Clases.Proyecto;

namespace EasyBuy
{
    public partial class FrmUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ActivarInactivarCampos();
            if (!IsPostBack)
            {
                if (Session["sUsuario"] != null)
                {
                    this.ConsultarInformacionUsuario();
                }
                else
                {
                    Response.Redirect("~/FrmInicio.aspx");
                }
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            this.LimpiarCampos();
        }

        private void LimpiarCampos()
        {
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

        private void ConsultarInformacionUsuario()
        {
            UsuarioENT oUsuario = (UsuarioENT) Session["sUsuario"];

            txtCedula.Text = HttpUtility.HtmlDecode(oUsuario.Cedula);
            txtNombres.Text = HttpUtility.HtmlDecode(oUsuario.Nombres);
            txtApellidos.Text = HttpUtility.HtmlDecode(oUsuario.Apellidos);
            txtNumTelefono.Text = HttpUtility.HtmlDecode(oUsuario.Telefono);
            txtDeptoResidencia.Text = HttpUtility.HtmlDecode(oUsuario.DeptoResidencia);
            txtMpioResidencia.Text = HttpUtility.HtmlDecode(oUsuario.MpioResidencia);
            txtDireccion.Text = HttpUtility.HtmlDecode(oUsuario.Direccion);
            DdlSexo.SelectedIndex = oUsuario.Sexo.Equals("Femenino") ? 1 : 2;
            txtFechaNacimiento.Text = oUsuario.FechaNacimiento.ToString("yyyy-MM-dd");
            txtCorreo.Text = HttpUtility.HtmlDecode(oUsuario.Correo);
            txtClave.Text = oUsuario.Clave;
        }

        private void ActivarInactivarCampos()
        {
            if (chkModificarClave.Checked)
            {
                txtClave.Enabled = true;
                txtConfirmarClave.Enabled = true;
            }
            else
            {
                txtClave.Enabled = false;
                txtConfirmarClave.Enabled = false;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
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

            if (oCtrlUsuario.ActualizarInformacion(oUsuario, chkModificarClave.Checked))
            {
                FailureText.Text = oUsuario.Error;
                //Enviar Correo
            }
            else
            {
                FailureText.Text = oUsuario.Error;
                oUsuario = null;
            }

            oUsuario = null;
        }
    }
}