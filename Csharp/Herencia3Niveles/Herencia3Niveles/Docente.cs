using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herencia3Niveles
{
    class Docente: Empleado
    {
        private int puntajeDocente;

        public int PuntajeDocente
        {
            get { return puntajeDocente; }
            set { puntajeDocente = value; }
        }

        public override string ToString()
        {
            string s;

            s ="Docente: " + base.Apellido + " DNI: " + base.Dni + " Categoría: " + base.Categoria + " Puntaje: " + PuntajeDocente;
            return s;

        }
    }
}
