using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herencia3Niveles
{
    class Persona
    {
        private int dni;
        private string apellido;

        public int Dni
        {
            get { return dni; }
            set { dni = value; }
        }

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public override string ToString()
        {
            string s;

            s = "Persona: " + apellido + " DNI: " + dni;
            return s;

        }


    }
}
