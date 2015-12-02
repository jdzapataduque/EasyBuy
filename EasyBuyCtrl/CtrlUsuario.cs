using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using libClases6_8.Clases.Proyecto;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace EasyBuyCtrl
{
    public class CtrlUsuario
    {
        public bool IniciarSesion(UsuarioENT oUsuario)
        {
            UsuarioENT oENTUsuario = new UsuarioENT();
            return oENTUsuario.IniciarSesion(oUsuario);
        }

        public bool RegistrarUsuario(UsuarioENT oUsuario)
        {
            UsuarioENT oENTUsuario = new UsuarioENT();
            return oENTUsuario.RegistrarUsuario(oUsuario);
        }

        public bool RecordarPassword(UsuarioENT oUsuario)
        {
            UsuarioENT oENTUsuario = new UsuarioENT();

            if (oENTUsuario.RecordarPassword(oUsuario))
            {
                string sCorreo = ConfigurationManager.AppSettings["CorreoEasyBuy"];
                string sClave = ConfigurationManager.AppSettings["ClaveEasyBuy"];
                string sSubject = ConfigurationManager.AppSettings["SubjectCorreoEasyBuy"];
                
                string sCuerpo = "Estimado usuario: " + oUsuario.Nombres + " " + oUsuario.Apellidos + " \n "
                                 + "A continuación enviamos la información necesaria para iniciar sesión en nuestro sistema: \n \n "
                                 + "Usuario: " + oUsuario.Correo + "\n "
                                 + "Clave: " + oUsuario.Clave;

                var client = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential(sCorreo, sClave),
                    EnableSsl = true
                };

                client.Send(oUsuario.Correo, oUsuario.Correo, sSubject, sCuerpo);
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool ActualizarInformacion(UsuarioENT oUsuario, bool ModificarClave)
        {
            UsuarioENT oENTUsuario = new UsuarioENT();
            return oENTUsuario.ActualizarInformacion(oUsuario, ModificarClave);
        }
    }
}
