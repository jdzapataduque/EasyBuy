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
    public partial class FrmInicio : System.Web.UI.Page
    {
        public static List<ArticuloENT> listaArticulos = new List<ArticuloENT>();
        public static List<ArticuloENT> oSessionArticulo = new List<ArticuloENT>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ContultarCategorias();
                this.ConsultarMarcaXCategoria();
            }
        }

        private void ContultarCategorias()
        {
            //Llena el combo de las categorías
            CategoriaENT oCategoria = new CategoriaENT();
            oCategoria.cboMarca = DdlCategorias;

            CtrlCategoria oCtrlCategoria = new CtrlCategoria();

            if (!oCtrlCategoria.ConsultarCategoria(oCategoria))
            {
                lblError.Text = oCategoria.Error;
            }

            oCategoria = null;
            oCtrlCategoria = null;
        }

        private void ConsultarMarcaXCategoria()
        {
            //Llena el combo de las categorías
            MarcaENT oMarca = new MarcaENT();
            //oMarca.Categoria = Convert.ToInt32(DdlCategorias.SelectedValue);
            oMarca.cboMarca = DdlMarcas;

            CtrlMarca oCtrlMarca = new CtrlMarca();

            if (!oCtrlMarca.ConsultarMarcaXCategoria(oMarca))
            {
                lblError.Text = oMarca.Error;
            }

            oMarca = null;
            oCtrlMarca = null;
        }

        protected void ConsultarArticulos()
        {
            ArticuloENT oArticulo = new ArticuloENT();
            oArticulo.GrdArticulo = GrdProductos;
            oArticulo.Marca = Convert.ToInt32(DdlMarcas.SelectedValue);

            CtrlArticulo oCtrlArticulo = new CtrlArticulo();

            if (!oCtrlArticulo.ConsultarArticulos(oArticulo))
            {
                lblError.Text = oArticulo.Error;
            }

            oArticulo = null;
        }

        protected void DdlCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ConsultarMarcaXCategoria();
            this.ConsultarArticulos();
        }

        protected void DdlMarcas_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ConsultarArticulos();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ArticuloENT oArticulo = new ArticuloENT();
            oArticulo.GrdArticulo = GrdProductos;
            oArticulo.Nombre = HttpUtility.HtmlDecode(txtBuscarProducto.Text.Trim());

            CtrlArticulo oCtrlArticulo = new CtrlArticulo();

            if (!oCtrlArticulo.ConsultarArticulos2(oArticulo))
            {
                lblError.Text = oArticulo.Error;
            }

            oArticulo = null;
        }

        protected void GrdProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int filaSeleccionada = GrdProductos.SelectedIndex;

            //Verificar que el usuario haya iniciado sesión para realizar compras
            if (Session["sUsuario"] != null)
            {
                //verificar que no exista el artículo en el carrito
                if (!listaArticulos.Exists(p => p.Codigo == Convert.ToInt32(GrdProductos.DataKeys[filaSeleccionada].Value.ToString())))
                {
                    string formatoPrecio = GrdProductos.Rows[filaSeleccionada].Cells[3].Text.Replace("$", "").Replace(".", "").Replace(",00", "");
                    int intCantidad = 1;

                    listaArticulos.Add(new ArticuloENT()
                    {
                        Codigo = Convert.ToInt32(GrdProductos.DataKeys[filaSeleccionada].Value.ToString()),
                        Nombre = GrdProductos.Rows[filaSeleccionada].Cells[0].Text,
                        Precio = Convert.ToInt32(formatoPrecio),
                        Cantidad = intCantidad, // 1 si se selecciona directamente desde el grid;
                        Subtotal = Convert.ToInt32(formatoPrecio) * intCantidad
                    });

                    FailureText.Text = "Se ha adicionado al carrito el artículo " + GrdProductos.Rows[filaSeleccionada].Cells[0].Text;
                }
                else
                {
                    FailureText.Text = "El artículo seleccionado ya existe. Por favor verifique.";
                }
            }
            else
            {
                FailureText.Text = "Para realizar el proceso de compras debe iniciar sesión.";
            }
        }

        protected void GrdProductos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string codigo = GrdProductos.DataKeys[e.Row.RowIndex].Value.ToString();
                string nombre = DataBinder.Eval(e.Row.DataItem, "NOMBRE").ToString();

                oSessionArticulo.Add(new ArticuloENT()
                {
                    Codigo = Convert.ToInt32(GrdProductos.DataKeys[e.Row.RowIndex].Value.ToString()),
                    Nombre = DataBinder.Eval(e.Row.DataItem, "NOMBRE").ToString(),
                    Precio = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "PRECIO").ToString().Replace("$", "").Replace(".", "").Replace(",00", ""))
                });

                //Session["Articulo"]
                Button btn = (Button)e.Row.FindControl("HLVerMas");
                string imagen = DataBinder.Eval(e.Row.DataItem, "IMAGEN").ToString();
                btn.Attributes.Add("OnClick", "openModalForm('" + imagen + "','" + e.Row.RowIndex + "');");
            }
        }
    }
}