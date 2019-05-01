using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ejercicios
{
    class Program
    {
        static void Main(string[] args){

            /*
            //Crear un arreglo y cargarlo (manualmente) con números enteros
            //Mostrar la suma de los números del arreglo
            //Mostrar el promedio de los números del arreglo
            int[] numeros = new int[4];
            int cargas = 0;
            int suma = 0;

            do{
                Console.Write("*Ingrese el {0}º numero: ", cargas+1);
                numeros[cargas] = int.Parse(Console.ReadLine());
                cargas++;
            } while (cargas < numeros.Length);

            for(int i=0; i < numeros.Length; i++){
                suma += numeros[i];
            }
            Console.WriteLine("---------------------------------------------");
            Console.WriteLine("La suma de los números ingresados es: {0}", suma);
            Console.WriteLine("El promedio de los números ingresados es: {0}", suma / numeros.Length);
            
            //Ingresar valores enteros en un arreglo, y mostrar el valor minimo y maximo
            int[] numeros = new int[4];
            int cargas = 0, minimo, maximo;

            do{
                Console.Write("*Ingrese el {0}º numero: ", cargas + 1);
                numeros[cargas] = int.Parse(Console.ReadLine());
                cargas++;
            } while (cargas < numeros.Length);
            minimo = numeros[0];
            maximo = numeros[1];

            for (int i = 0; i < numeros.Length; i++){
                if (numeros[i] < minimo){
                    minimo = numeros[i];
                }
                if (numeros[i] > maximo){
                    maximo = numeros[i];
                }
            }
            Console.WriteLine("-------------------------------------------------------------------------");
            Console.WriteLine("El valor mínimo dentro del arreglo es: {0} y el máximo es: {1}", minimo, maximo);
            */

            /*
            //Lab 4 ej 1
            int[] numeros = new int[6];
            int suma = 0;

            numeros[0] = 10;
            numeros[1] = 20;
            numeros[2] = 5;
            numeros[3] = 15;
            numeros[4] = 30;
            numeros[5] = 20;

            //Mostrar los valores
            for (int i = 0; i < numeros.Length; i++){
                Console.WriteLine("Indice: {0}, Valor: {1}", i, numeros[i]);
                suma += numeros[i];
            }
            //Valores totales
            Console.WriteLine("------------------------------------------------");
            Console.WriteLine("*La suma de los valores del arreglo es {0}", suma);
            //Posiciones impares (POSICION o INDICE?)
            Console.WriteLine("\n*Indices impares:");
            for (int i = 1; i < numeros.Length; i+=2)
            {
                Console.WriteLine("{0}: {1}", i, numeros[i]);
            }
            //Mayor
            Console.WriteLine("\n*Elemento mayor: {0}", numeros.Max());
            //Cuantas veces aparece 20
            int cont20 = 0;
            for (int i = 0; i < numeros.Length; i++){
                if (numeros[i] == 20){
                    cont20++;
                }
            }
            Console.WriteLine("\n*El número 20 aparece: {0} veces", cont20);
            */


            //Lab 4 ej 2
            //Inflacion total
            //Menor inflacion, Mayor inflacion
            //Inflacion promedio
            double[] inflacion = new double[12] { 0.8, 0.1, 0.3, 0.4, 0.3, 0.6, 0.5, 0.3, 0.7, 0.3, 0.2, 0.9 } ;
            string[] meses = new string[12] { "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto",
                                             "Septiembre", "Octubre", "Noviembre", "Diciembre" };
            double sumaInflacion = 0;
            int menorInflacion = 0, mayorInflacion = 0;
           
            for (int i=0; i<inflacion.Length; i++){
                sumaInflacion += inflacion[i];
                if (inflacion[i] < inflacion[menorInflacion]){
                    menorInflacion = i;
                }
                if (inflacion[i] > inflacion[mayorInflacion]){
                    mayorInflacion = i;
                }
            }

            Console.WriteLine("La inflación anual fue de {0}", sumaInflacion);
            Console.WriteLine("La menor inflación fue de {0} en el mes de {1}", inflacion[menorInflacion], meses[menorInflacion]);
            Console.WriteLine("La mayor inflación fue de {0} en el mes de {1}", inflacion[mayorInflacion], meses[mayorInflacion]);
            Console.WriteLine("La inflación promedio fue de {0}", sumaInflacion / inflacion.Length);




            Console.ReadKey();
}
}
}
