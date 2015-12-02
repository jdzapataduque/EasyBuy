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
    public partial class FrmRecuerdaPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRecordarClave_Click(object sender, EventArgs e)
        {
            UsuarioENT oUsuario = new UsuarioENT();
            oUsuario.Correo = txtUsuario.Text.Trim();

            CtrlUsuario oCtrlUsuario = new CtrlUsuario();

            if (oCtrlUsuario.RecordarPassword(oUsuario))
            {
                FailureText.Text = oUsuario.Error;
                oUsuario = null;
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