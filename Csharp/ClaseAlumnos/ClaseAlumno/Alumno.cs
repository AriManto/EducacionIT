using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClaseAlumno
{
    class Alumno
    {
        private int dni;
        private string nombre;
        private string apellido;
        private DateTime fechaNacimiento;
        //Atributos especificos de alumno
        //Materias y comisiones

        //GETTER y SETTER

        public int DNI
        {
            get { return dni; }
            set
            { //Validando el dni hasta 96 millones
                if (value > 96000000)
                {
                    dni = -1;
                }
                else
                {
                    dni = value;
                }
            }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        //Propiedad autoimplementada
        //public string Apellido { get; set; }


        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        
        public int Edad
        {
            get
            {
                return 
                    //Edad;
                    DateTime.Today.AddTicks(-FechaNacimiento.Ticks).Year - 1;
            }
        }

        public DateTime FechaNacimiento
        {
            get { return fechaNacimiento; }
            set { fechaNacimiento = value;
                //Edad = DateTime.Today.AddTicks(-FechaNacimiento.Ticks).Year - 1;
            }
        }
        
        public string MostrarDatos()
        {
            string strDatos;
            strDatos = "DNI: " + dni + " Apellido y nombre: " + apellido + ", " + nombre;
            return strDatos;
        }

    }
}
