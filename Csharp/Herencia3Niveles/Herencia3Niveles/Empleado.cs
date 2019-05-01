using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herencia3Niveles
{
    class Empleado: Persona
    {

        private char categoria;

        public char Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public override string ToString()
        {
            string s;

            s = "Empleado: " + base.Apellido + " DNI: " + base.Dni + " Categoría: " + categoria;
            return s;

        }
    }
}
