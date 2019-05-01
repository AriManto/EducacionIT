using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;

namespace CRUDLibros.Data
{
    // Clase Book
    // Atributos: BookId: identificación del libro
    //            Title: nombre del libro
    //            Isbn: identificador único de libro (para uso comercial)
    //            PublisherName: nombre de la editorial que publica el libro
    //            AuthorName: nombre de autor del libro
    //            CategoryName: nombre del género del libro
    //            
    public class Book
    {

        public int BookId { get; set; }
        public string Title { get; set; }
        public string Isbn { get; set; }
        public string PublisherName { get; set; }
        public string AuthorName { get; set; }
        public string CategoryName { get; set; }


        public List<Book> GetBooks(string connectionString)
        // Recupera la lista con todos los libros que existen en la base de datos
        // Este método usa los objetos de ADO.Net: connection, command y datareader.
        {

            List<Book> bookList = new List<Book>();

            SqlConnection con = new SqlConnection(connectionString);

            string selectSQL = "select BookId, Title, Isbn, PublisherName, AuthorName, CategoryName  from GetBookData";

            con.Open();

            SqlCommand cmd = new SqlCommand(selectSQL, con);

            //Sería el result set
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr != null)
            {
                while (dr.Read())
                {
                    Book book = new Book();

                    book.BookId = Convert.ToInt32(dr["BookId"]);
                    book.Title = dr["Title"].ToString();
                    book.Isbn = dr["ISBN"].ToString();
                    book.PublisherName = dr["PublisherName"].ToString();
                    book.AuthorName = dr["AuthorName"].ToString();
                    book.CategoryName = dr["CategoryName"].ToString();

                    bookList.Add(book);
                }
            }
            return bookList;
        }

        public void CreateBook(string connectionString, Book book)
        // Inserta un nuevo libro, en la tabla de libros de la base de datos
        // Este método usa los objetos de ADO.Net: connection, command y parameter.
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("CreateBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@Title", book.Title));
                    cmd.Parameters.Add(new SqlParameter("@Isbn", book.Isbn));
                    cmd.Parameters.Add(new SqlParameter("@PublisherName", book.PublisherName));
                    cmd.Parameters.Add(new SqlParameter("@AuthorName", book.AuthorName));
                    cmd.Parameters.Add(new SqlParameter("@CategoryName", book.CategoryName));

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public Book GetBookData(string connectionString, int bookId)
        // Recupera los datos de un libro dada su identificación
        // Este método usa los objetos de ADO.Net: connection, command y datareader.
        {

            SqlConnection con = new SqlConnection(connectionString);

            string selectSQL = "select BookId, Title, Isbn, PublisherName, AuthorName, CategoryName  from GetBookData where BookId = " + bookId;
            con.Open();

            SqlCommand cmd = new SqlCommand(selectSQL, con);

            SqlDataReader dr = cmd.ExecuteReader();

            Book book = new Book();

            if (dr != null)
            {
                while (dr.Read())
                {


                    book.BookId = Convert.ToInt32(dr["BookId"]);
                    book.Title = dr["Title"].ToString();
                    book.Isbn = dr["ISBN"].ToString();
                    book.PublisherName = dr["PublisherName"].ToString();
                    book.AuthorName = dr["AuthorName"].ToString();
                    book.CategoryName = dr["CategoryName"].ToString();
                }
            }

            return book;
        }


        public void EditBook(string connectionString, Book book)
        // Modifica los datos de un nuevo libro existente
        // Este método usa los objetos de ADO.Net: connection, command y parameter.
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("UpdateBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@BookId", book.BookId));
                    cmd.Parameters.Add(new SqlParameter("@Title", book.Title));
                    cmd.Parameters.Add(new SqlParameter("@Isbn", book.Isbn));
                    cmd.Parameters.Add(new SqlParameter("@PublisherName", book.PublisherName));
                    cmd.Parameters.Add(new SqlParameter("@AuthorName", book.AuthorName));
                    cmd.Parameters.Add(new SqlParameter("@CategoryName", book.CategoryName));

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public void DeleteBook(string connectionString, int bookId)
        // Elimina un libro existente, a través de su identificación
        // Este método usa los objetos de ADO.Net: connection, command y parameter.
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("DeleteBook", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@BookId", bookId));


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

    }
}