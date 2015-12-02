using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using libClases6_8.Clases.Proyecto;

namespace EasyBuy
{
    public partial class FrmDetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Image1.ImageUrl = "~/ImagenesProductos/" + Request.QueryString["Imagen"];
                this.llenarCantidad();
            }
        }

        public void llenarCantidad()
        {
            this.txtCantidad.Text = "" + 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["sUsuario"] != null)
            {
                int fila = Convert.ToInt32(Request.QueryString["Fila"]);

                if (!FrmInicio.listaArticulos.Exists(p => p.Codigo == FrmInicio.oSessionArticulo[fila].Codigo))
                {
                    FrmInicio.listaArticulos.Add(new ArticuloENT()
                    {
                        Codigo = FrmInicio.oSessionArticulo[fila].Codigo,
                        Nombre = FrmInicio.oSessionArticulo[fila].Nombre,
                        Precio = FrmInicio.oSessionArticulo[fila].Precio,
                        Cantidad = Convert.ToInt32(txtCantidad.Text), // 1 si se selecciona directamente desde el grid;
                        Subtotal = Convert.ToInt32(FrmInicio.oSessionArticulo[fila].Precio) * Convert.ToInt32(txtCantidad.Text)
                    });

                    ClientScript.RegisterStartupScript(typeof(Page), "closePage", "<script type='text/JavaScript'>window.close();</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "closePage", "<script type='text/JavaScript'>alert('El artículo seleccionado ya existe en el carrito. Por favor verifique.'); window.close();</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "closePage", "<script type='text/JavaScript'>alert('Para adicionar un artículo debe iniciar sesión previamente.'); window.close();</script>");
            }
        }
    }
}