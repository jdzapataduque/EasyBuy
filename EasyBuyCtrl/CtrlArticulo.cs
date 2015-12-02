using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using libClases6_8.Clases.Proyecto;

namespace EasyBuyCtrl
{
    public class CtrlArticulo
    {
        public bool ConsultarArticulos(ArticuloENT oArticulo)
        {
            ArticuloENT oENTArticulo = new ArticuloENT();
            return oENTArticulo.ConsultarArticulos(oArticulo);
        }

        public bool ConsultarArticulos2(ArticuloENT oArticulo)
        {
            ArticuloENT oENTArticulo = new ArticuloENT();
            return oENTArticulo.ConsultarArticulos2(oArticulo);
        }
    }
}
