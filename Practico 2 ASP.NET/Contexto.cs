using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Practico_2_ASP.NET
{
    public class Contexto
    {
        public List<Evento> eventos = new List<Evento>();

        public Contexto()
        {
            eventos.Add(new Evento() { 
                Fecha = new DateTime(2013,10,10),
                imagen = "http://thumbnails45.imagebam.com/14985/8eebce149848731.jpg",
                Lugar = "Lugar 3",
                Nombre = "Evento 1"
            });

            eventos.Add(new Evento()
            {
                Fecha = new DateTime(2013, 11, 10),
                imagen = "http://thumbnails43.imagebam.com/14985/d8d758149848851.jpg",
                Lugar = "Lugar 2",
                Nombre = "Evento 2"
            });

            eventos.Add(new Evento()
            {
                Fecha = new DateTime(2013, 12, 10),
                imagen = "http://www.vuenosairez.com/~main/images/eventos/LosPiojos_logo_160x160.JPG",
                Lugar = "Lugar 1",
                Nombre = "Evento 3"
            });
        }
    }
}