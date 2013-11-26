using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Practico_2_ASP.NET
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Response.Write("La Aplicacion ha comenzado");
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Response.Write("Se ha iniciado una sesion");
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Response.Write("La Aplicacion ha lanzado un error");
        }

        protected void Session_End(object sender, EventArgs e)
        {
            Response.Write("Se ha cerrado una sesion");
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Response.Write("La Aplicacion ha Finalizado, realmente no tengo la menor idea de como puedo darle un uso practico a esto en este proyecto...!");
        }
    }
}