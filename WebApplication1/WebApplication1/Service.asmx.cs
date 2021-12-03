using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Descripción breve de Service
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class Service : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }
        [WebMethod (Description ="Obtiene una cotizacion de las acciones de asdasdasd")]
        public decimal GetStockQuote(string ticker)
        {
            return ticker.Length;
        }
        [WebMethod (Description ="Traduccion de una palabra")]
        public string GetTraduccion(string palabra)
        {

            string traduccion = "";
            if (palabra == "Hola")
            {
                traduccion = "Hello!";
            }else if (palabra == "Adios")
            {
                traduccion = "Bye!";
            }
            return traduccion;
        }
    }
}
