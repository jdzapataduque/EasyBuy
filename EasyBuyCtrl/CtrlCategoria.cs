using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using libClases6_8.Clases.Proyecto;
namespace EasyBuyCtrl
{
    public class CtrlCategoria
    {
        public bool ConsultarCategoria(CategoriaENT oCateogoria)
        {
            CategoriaENT oENTCategoria = new CategoriaENT();
            return oENTCategoria.ConsultarCategorias(oCateogoria);
        }
    }
}
