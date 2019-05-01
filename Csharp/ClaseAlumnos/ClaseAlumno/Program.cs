using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClaseAlumno
{
    class Program
    {
        static void Main(string[] args)
        {
            Alumno alum = new Alumno();
            Console.WriteLine("Ingrese DNI:");
            alum.DNI = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese Apellido:");
            alum.Apellido = Console.ReadLine();
            Console.WriteLine("Ingrese Nombre:");
            alum.Nombre = Console.ReadLine();
            Console.WriteLine("Ingrese Fecha Nacimiento dd/mm/aaaa:");
            alum.FechaNacimiento = Convert.ToDateTime(Console.ReadLine());
            //alum.Edad = DateTime.Today.AddTicks(-alum.FechaNacimiento.Ticks).Year - 1;
            Console.WriteLine("-------");
            Console.WriteLine(alum.MostrarDatos());
            Console.WriteLine("Edad:");
            Console.WriteLine(alum.Edad);

            
            Console.ReadKey();
        }
    }
}
