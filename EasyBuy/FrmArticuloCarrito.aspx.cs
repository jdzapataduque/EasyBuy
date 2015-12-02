using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EasyBuy
{
    public partial class FrmArticuloCarrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
            if (!IsPostBack)
            {
                this.VerCarrito();
                btnCerrar.Attributes.Add("onclick", "window.close();");
            }
        }

        public void VerCarrito()
        {
            if (FrmInicio.listaArticulos.Count > 0)
            {
                grvArticuloCarrito.DataSource = FrmInicio.listaArticulos;
                grvArticuloCarrito.DataBind();
                LitTotal.Text = "Total Compra: $ " + FrmInicio.listaArticulos.Sum(p => p.Subtotal).ToString();
            }
            else
            {
                FailureText.Text = "No se han seleccionado artículos.";
                LitTotal.Text = "Total Compra: $ 0";
            }
        }

        protected void grvArticuloCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int fila = e.RowIndex;
            FrmInicio.listaArticulos.RemoveAt(fila);
            grvArticuloCarrito.DataSource = FrmInicio.listaArticulos;
            grvArticuloCarrito.DataBind();
            this.VerCarrito();
        }
    }
}