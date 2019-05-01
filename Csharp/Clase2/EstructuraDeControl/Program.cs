using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EstructuraDeControl
{
    class Program
    {
        static void Main(string[] args)
        {
           /*
           Desarrollar el código que permita a una persona ingresar como máximo tres veces su contraseña. 
           En caso de ingreso correcto deberá exhibirse la leyenda “Bienvenido!!”, caso contrario se mostrará 
           “tres veces fallidas”. 
           Indicar cuantas posibilidades de ingresar el código le queda. Por ejemplo, si tiene 2 posibilidades, 
           informar "Tiene dos chances !" y si le queda una última oportunidad "Atención!! Ultima oportunidad!"
           */
            const int INTENTOSMAXIMOS = 3;
            const string CONTRASEÑAVALIDA = "hola123";
            int intentosRealizados = 0;
            string contraseñaIngresada;
            bool continuar = true;

            //Bucle principal de login
            while (continuar){
                Console.Write("Ingrese su contraseña: ");
                contraseñaIngresada = Console.ReadLine();
                if (string.Equals(contraseñaIngresada,CONTRASEÑAVALIDA)) { //Intento exitoso
                    Console.WriteLine("Bienvenido!!");
                    continuar = false;
                }
                else { //Intento fallido
                    intentosRealizados++;
                    if (intentosRealizados < INTENTOSMAXIMOS) {
                        if (INTENTOSMAXIMOS - intentosRealizados == 1){ //Último intento
                            Console.WriteLine("Contraseña incorrecta. Atención!! Última oportunidad");
                        }
                        else {
                        Console.WriteLine("Contraseña incorrecta. Le quedan {0} de {1} intentos", INTENTOSMAXIMOS - intentosRealizados, INTENTOSMAXIMOS);
                        }
                    }
                    else { //Ya no quedan más intentos
                        Console.WriteLine("Se alcanzó el máximo de intentos fallidos. Acceso bloqueado.");
                        continuar = false;
                    }
                }
            }
            Console.ReadKey();
        }
    }
}
