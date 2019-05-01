using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace SQLConnection
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString =
            "Data Source=.\\SQLExpress;Initial Catalog=NORTHWND;"
                   + "Integrated Security=true";

            // String sql con la instrucción SELECT y un parámetro para filtrar por precio unitario
            string queryString =
                "SELECT ProductID, UnitPrice, ProductName from dbo.products "
                    + "WHERE UnitPrice > @Precio "
                    + "ORDER BY UnitPrice DESC;";
            Console.WriteLine(queryString);

            // Indicamos el valor del parámetro
            int ValorPrecio = 5;

            // Crear y abrir la conexión
            using (SqlConnection connection =
                new SqlConnection(connectionString))
            {
                // Crear los objetos Command y Parameter
                // En el Command se indica la instrucción SQL de la variable queryString
                // Se agrega al Command un nuevo parámetro llamado @Precio 
                // y se le pasa a ese parámetro, el valor de la variable ValorPrecio
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@Precio", ValorPrecio);

                // Se abre la conexión en un bloque try/catch 
                // Se crea un objeto DataReader y se ejecuta la instrucción SQL del Command
                // El resultado del SELECT quedará en el objeto reader
                // Y en un ciclo while, se itera el reader mostrando los registros/campos
                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Console.WriteLine("\t{0}\t{1}\t{2}",
                            reader[0], reader[1], reader[2]);
                    }
                    reader.Close();
                    Console.ReadKey();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                Console.ReadLine();
            }
        }
    }
}