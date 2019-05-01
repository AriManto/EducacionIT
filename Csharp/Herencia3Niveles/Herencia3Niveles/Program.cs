using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herencia3Niveles
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {

                Persona p = new Persona();
                p.Apellido = "Juarez";
                p.Dni = 11111111;


                Empleado e = new Empleado();
                e.Apellido = "Lopez";
                e.Dni = 22222222;
                e.Categoria = 'A';

                Docente d = new Docente();
                d.Apellido = "Lopez";
                d.Dni = 33333333;
                d.Categoria = 'A';
                d.PuntajeDocente = 100;

                Persona OtraPersona = new Persona();
                Docente OtroDocente = new Docente();


                //Asigno docente a persona
                OtraPersona = d;

                //Asigno persona a docente 
                //OtroDocente = (Docente)p;       //Esta forma de convertir da ERROR en tiempo de ejecución
                OtroDocente = p as Docente;     //Con el operador as no lo puede convertir pero no da error, la variable queda en null

                Console.WriteLine("Persona " + OtraPersona.ToString());
                Console.WriteLine("Docente " + OtroDocente.ToString());
            }

            catch (NullReferenceException e)
            {
                Console.WriteLine("Error en el objeto: " + e.Message);
            }

            finally
            {

                Console.ReadKey();
            }
        }
    }
}
