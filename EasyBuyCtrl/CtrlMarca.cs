using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using libClases6_8.Clases.Proyecto;


namespace EasyBuyCtrl
{
    public class CtrlMarca
    {
        public bool ConsultarMarcaXCategoria(MarcaENT oMarca)
        {
            MarcaENT oMarcaENT = new MarcaENT();
            return oMarcaENT.ConsultarMarcaXCategoria(oMarca);
        }
    }
}
