using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clase2
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            //Preincremento y Postincremento
            int c = 5;
            int b = 7;
            c = b++; // Asigna a c el valor de b y luego incrementa b
            c = ++b; // Incrementa b y luego se asigna a c

            Console.WriteLine("B quedó con {0} y C quedó con {1}", b, c);
            Console.ReadKey();
            */
            /*
            int condicion = 3;
            Console.WriteLine("Condición = " + condicion);

            //if con bloques
            if (condicion==3){
                Console.WriteLine("La condición se cumple");
            }
            else {      //Bloque opcional
                Console.WriteLine("La condición no se cumple");
            }
      
            Console.ReadKey();
            */
            /*
            //if sin bloques
            int condicion = 0;
            Console.Write("Ingrese un valor entero: ");
            condicion = int.Parse(Console.ReadLine());
            //alternativa
            //condicion = Convert.ToInt32(Console.ReadLine());
            if (condicion == 3) Console.WriteLine("La condición se cumple");
            else Console.WriteLine("La condición no se cumple");

            Console.ReadKey();
            */
            /*
            //Aprobado 7,8,9,10(else). Regular (>4 && <7) 4,5,6. Desaprobado 0,1,2,3 (<4)
            int nota1 = 0;
            int nota2 = 0;
            int nota3 = 0;

            Console.WriteLine("Ingrese primera nota:");
            nota1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese segunda nota:");
            nota2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese tercera nota:");
            nota3 = int.Parse(Console.ReadLine());

            int promedio = (nota1 + nota2 + nota3) / 3;
            Console.WriteLine("La nota final es: {0}", promedio);
            if (promedio < 4)
            {
                Console.WriteLine("Desaprobado");
            }
            else if (promedio >=4 && promedio<7)
            {
                Console.WriteLine("Regular");
            }
            else
            {
                Console.WriteLine("Aprobado");
            }
            Console.ReadKey();
            */
            /*
            //Ejemplo con switch
            int cond = 9;
            switch (cond)
            {
                case 10:
                    Console.WriteLine("Valor 10");
                    break;
                case 11:
                    Console.WriteLine("Valor 11");
                    break;
                case 12:
                    Console.WriteLine("Valor 12");
                    break;
                case 13:
                    Console.WriteLine("Valor 13");
                    break;
                default:
                    Console.WriteLine("nada");
                    break;
            }
            Console.ReadKey();
            */

            /*int a = 1;
            while (a <= 5) //Ascendente
            {
                Console.WriteLine(a);
                a++;
            }
            Console.WriteLine("Fin del while");
            Console.WriteLine("La variable llegó al valor {0}", a);

            while (a>=1) //Descendente
            {
                if (a <= 5) {
                    Console.WriteLine(a);
                }
                a--;
            }
            Console.WriteLine("Fin del while 2");
            Console.WriteLine("La variable llegó al valor {0}", a);
            Console.ReadKey();
            */

            //---------------EJERCICIOS
            //Lab 2 ej 1. Lab 3 ej 2. Lab 3 ej 4. Lab 3 ej 6. Lab 3 ej 7.
            //Lab 2 ej 1
            //Cual de los tres números es mayor
            int nro1 = 100, nro2 = 500, nro3 = 250;
            Console.WriteLine("Lab 2, ejercicio 1:");
            Console.WriteLine("Número 1: {0}, Número 2: {1}, Número 3: {2}", nro1, nro2, nro3);
            int mayor;
            if (nro1 >= nro2)
            {
                mayor = nro1;
            } else if (nro2>= nro3)
            {
                mayor = nro2;
            } else { mayor = nro3; }
            Console.WriteLine("El número mayor es {0}", mayor);
            Console.WriteLine("---------------------------------------");

            //Lab 3 ej 2
            //Imprimir numeros del 1 al 10, con paso 2
            Console.WriteLine("Lab 3, ejercicio 2:");
            int n = 1;
            while (n <= 10)
            {
                Console.WriteLine(n);
                n += 2;
            }
            Console.WriteLine("---------------------------------------");

            //Lab 3 ej 4
            //Imprimir numeros del 1 al 10, sin 2, 5 y 9
            Console.WriteLine("Lab 3, ejercicio 4:");
            n = 1;
            while (n<=10)
            {
                if (n != 2 && n != 5 && n != 9)
                {
                    Console.WriteLine(n);
                }
                n++;
            }
            Console.WriteLine("---------------------------------------");

            //Lab 3 ej 6
            //Imprimir la suma de los numeros del 1 al 10
            Console.WriteLine("Lab 3, ejercicio 6:");
            n = 1;
            int suma = 0;
            Console.WriteLine(suma);
            while (n <= 10)
            {
                suma += n;
                Console.WriteLine("+ {0} = {1}", n, suma);
                n++;
            }
            Console.WriteLine("---------------------------------------");

            //Lab 3 ej 7
            //Suma de los numeros pares del 1 al 25
            Console.WriteLine("Lab 3, ejercicio 7");
            n = 1;
            suma = 0;
            Console.WriteLine(suma);
            while (n <= 25)
            {
                if (n % 2 == 0)
                {
                    suma += n;
                    Console.WriteLine("+ {0} = {1}", n, suma);
                }
                n++;
            }
            Console.WriteLine("---------------------------------------");

            //Lab 2 ej 4
            //Ingresar dos numeros. Mostrar menu con 4 opciones: suma, resta, producto, division
            Console.WriteLine("Lab 2, ejercicio 4");
            double num1, num2;
            int opcion;
            Console.Write("Ingrese primer numero: ");
            num1 = double.Parse(Console.ReadLine());
            Console.Write("Ingrese segundo numero: ");
            num2 = double.Parse(Console.ReadLine());
            Console.WriteLine("¿Qué operación desea realizar?");
            Console.WriteLine("1: Suma | 2: Resta | 3: Producto | 4: División");
            opcion = int.Parse(Console.ReadLine());
            switch (opcion)
            {
                case 1:
                    Console.WriteLine("{0} + {1} = {2}", num1, num2, num1+num2);
                    break;
                case 2:
                    Console.WriteLine("{0} - {1} = {2}", num1, num2, num1 - num2);
                    break;
                case 3:
                    Console.WriteLine("{0} * {1} = {2}", num1, num2, num1 * num2);
                    break;
                case 4:
                    Console.WriteLine("{0} / {1} = {2}", num1, num2, num1 / num2);
                    break;
                default:
                    Console.WriteLine("La opcion ingresada no es válida");
                    break;
            }
            
            Console.WriteLine("-----------------------------------------");
            Console.WriteLine("Promedio de notas con validación e ingreso de datos");
            int nota1=0, nota2=0, nota3=0, promedio=0;
            string estado = "DESAPROBADO";
            const int notaMinima = 1;
            const int notaMaxima = 10;
            const int notaAprobada = 7;
            const int notaRegular = 4;
            do {
                Console.Write("1º nota: ");
                nota1 = int.Parse(Console.ReadLine());
                if (!(nota1 >= notaMinima && nota1 <= notaMaxima)) {
                    Console.WriteLine("Error, ingrese un número entero del 1 al 10.");
                }
            } while (!(nota1 >= notaMinima && nota1 <= notaMaxima));

            do {
                Console.Write("2º nota: ");
                nota2 = int.Parse(Console.ReadLine());
                if (!(nota2 >= notaMinima && nota2 <= notaMaxima))
                {
                    Console.WriteLine("Error, ingrese un número entero del 1 al 10.");
                }
            } while (!(nota2 >= notaMinima && nota2 <= notaMaxima));

            do{
                Console.Write("3º nota: ");
                nota3 = int.Parse(Console.ReadLine());
                if (!(nota3 >= notaMinima && nota3 <= notaMaxima))
                {
                    Console.WriteLine("Error, ingrese un número entero del 1 al 10.");
                }
            } while (!(nota3 >= notaMinima && nota3 <= notaMaxima));
            Console.WriteLine("Notas ingresadas: {0}, {1}, {2}", nota1, nota2, nota3);
            promedio = (nota1 + nota2 + nota3) / 3;
            
            if (promedio >=notaRegular)
            {
                estado = "REGULAR";
                if (promedio >= notaAprobada)
                {
                    estado = "APROBADO";
                }
            }

            Console.WriteLine("El promedio es {0}, su estado es: {1}", promedio, estado);
            Console.ReadKey();

        }
    }
}
