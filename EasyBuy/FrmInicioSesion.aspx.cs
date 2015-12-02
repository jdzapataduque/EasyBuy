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
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            UsuarioENT oUsuario = new UsuarioENT();
            oUsuario.Correo = txtUsuario.Text.Trim();
            oUsuario.Clave = txtClave.Text.Trim();

            CtrlUsuario oCtrlUsuario = new CtrlUsuario();

            if (oCtrlUsuario.IniciarSesion(oUsuario))
            {
                Session["sUsuario"] = oUsuario;
                Response.Redirect("~/FrmInicio.aspx");
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