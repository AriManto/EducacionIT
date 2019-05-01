using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


/*
 - Modificar el mètodo girar indicando si gira hacia la izquierda o hacia la derecha.
El mensaje deberà indicar claramente cuàntos grados girar y en què sentido.

- Modificar los mètodos Acelerar y Frenar, validando la cantidad de kilòmetros
 entre 1 y 120.
Si se recibe un valor fuera de rango, mostrar un mensaje adecuado.
En el programa principal hacer una prueba pasando un valor fuera de rango
para que aparezca el mensaje.
     */

namespace EjemploClaseAuto
{
    class Auto
    {
        // Almacenan el valor de los atributos públicos
        protected double _velocidad = 0; // Se accede dentro de la clase Auto y en las clases derivadas
        private string _marca;
        private string _modelo;
        private string _color;

        // Constructor 
        public Auto(string marca, string modelo, string color)
        {
            _marca = marca;
            _modelo = modelo;
            _color = color;
        }

        //	Propiedad Velocidad (solo lectura) 
        public double Velocidad
        {
            get { return _velocidad; }
        }

        public string Marca {
            get { return _marca; }
            set { _marca= value; }
        }
        public string Modelo
        {
            get { return _modelo; }
            set { _modelo = value; }
        }
        public string Color
        {
            get { return _color; }
            set { _color = value; }
        }

        //	Método Acelerar
        public void Acelerar(double cantidad)
        {
            if (cantidad >= 1 && cantidad <= 120)
            {
                Console.WriteLine("--> Incrementando veloc. en {0} km/h", cantidad);
                _velocidad += cantidad;
            }
            else
            {
                Console.WriteLine("Error. El valor ingresado debe ser entre 1 y 120 km/h");
            }
        }

        // Método Girar
        public void Girar(double cantidad, string sentido)
        {
            sentido.ToLower();
            if (sentido == "i" || sentido == "izq" || sentido == "izquierda" || sentido == "0")
            {
                sentido = "izquierda";
            }
            else if (sentido == "d" || sentido == "der" || sentido == "derecha" || sentido == "1")
            {
                sentido = "derecha";
            } else
            {
                Console.WriteLine("Error. El sentido de giro ingresado no es correcto");
                return;
            }

            Console.WriteLine("--> Girando {0} grados hacia la {1}", cantidad, sentido.ToLower());
        }

        // Método Frenar

        public void Frenar(double cantidad)
        {
            if (cantidad >=1 && cantidad<=120)
            {
                Console.WriteLine("--> Reduciendo veloc. en {0} km/h", cantidad);
                _velocidad -= cantidad;
            } else
            {
                Console.WriteLine("Error. El valor ingresado debe ser entre 1 y 120 km/h");
            }
            if (_velocidad < 0){
                _velocidad = 0;
            }
           
        }


        // Método Estacionar
        public void Estacionar()
        {
            Console.WriteLine("--> Estacionando auto");
            _velocidad = 0;
        }





    }
}
