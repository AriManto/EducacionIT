using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PromedioNotas
{
    class Program
    {
         static void Main(string[] args)
        {
            // EJERCICIO DE LAS NOTAS CON VALIDACION (DO WHILE)                       
            int nota1;
            int nota2;
            int nota3;
            int promedio;
            string mensaje = "No Aprobado";


            //ingreso de nota1 
            do
            {
                nota1 = IngresoNota("Primera");
            } while (!(nota1 >= 1 && nota1 <= 10));

            //ingreso de nota2
            do
            {
                nota2 = IngresoNota("Segunda");
            } while (!(nota2 >= 1 && nota2 <= 10));


            do
            {
                nota3 = IngresoNota("Tercera");
            } while (!(nota3 >= 1 && nota3 <= 10));


            promedio = (nota1 + nota2 + nota3) / 3;

            // Muestra resultado
            if (promedio >= 4)
            {
                mensaje = "Regular";
                if (promedio >= 7)
                {
                    mensaje = "Promocionado";
                }
            }

            Console.WriteLine(mensaje);
            Console.ReadKey();
        }

        static int IngresoNota(string NroDeNota)
        {
            int nota;
            Console.WriteLine("Ingrese la {0} nota:",NroDeNota);
            nota = int.Parse(Console.ReadLine());

            return nota;
        }
    }
}
