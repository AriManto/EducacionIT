using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Arreglos
{
    class Program
    {
        static void Main(string[] args){
            string[] nombres = new string[4]; // Declaración e instanciación del array, de 3 posiciones (indice de 0 a 2)
            int[] numeros = new int[4];
            int i = 0;

            nombres[0] = "Carlos";
            nombres[1] = "Juan";
            nombres[2] = "José";
            nombres[3] = "Javier";

            numeros[0] = 1;
            numeros[1] = 2;
            numeros[2] = 3;
            numeros[3] = 4;

            do {
                Console.WriteLine("Ingrese el indice del arreglo");
                i = int.Parse(Console.ReadLine());
            } while (!(i>=0 && i<=4));

            Console.WriteLine("El nombre es {0} y el numero es {1}", nombres[i], numeros[i]);

            /*
            //Recorrido del arreglo
            for (int a = 0; a < 4; a++){
                Console.WriteLine(numeros[a]+" "+ nombres[a]);
            }
            */
            //Recorrido con propiedad .Length
            Console.WriteLine("Longitud de nombres es : " + nombres.Length);
            for (int a = 0; a < nombres.Length; a++){
                Console.WriteLine(numeros[a] + " " + nombres[a]);
            }






            Console.ReadKey();
        }
    }
}
