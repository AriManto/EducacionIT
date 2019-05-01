using System;

namespace PromedioNotasFunciones
{
    class Program
    {
        static int IngresoNota(string nroDeNota)
        {
            int nota;
            do
            {
                Console.WriteLine("Ingrese la {0} nota:", nroDeNota);
                nota = int.Parse(Console.ReadLine());
            } while (!(nota >= 1 && nota <= 10));
            return nota;
        }
        static void Main(string[] args)
        {
            // EJERCICIO DE LAS NOTAS CON VALIDACION (DO WHILE)                       
            int nota1;
            int nota2;
            int nota3;
            int promedio;
            string mensaje = "No Aprobado";

            nota1 = IngresoNota("primera");
            nota2 = IngresoNota("segunda");
            nota3 = IngresoNota("tercera");

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

        
    }
}
