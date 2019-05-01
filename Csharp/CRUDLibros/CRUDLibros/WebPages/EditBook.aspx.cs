using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using CRUDLibros.Data;

namespace CRUDLibros.WebPages
{
    public partial class EditBook : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["LibraryDBConnectionString"].ConnectionString;

        int bookId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["bookid"] != "")
                bookId = Convert.ToInt16(Request.QueryString["bookid"]);
            else
                Response.Redirect("Books.aspx");

            if (!IsPostBack)
            {
                FillBookData();
            }
        }

        private void FillBookData()
        {

            Book book = new Book();

            book = book.GetBookData(connectionString, bookId);

            txtTitle.Text = book.Title;
            txtIsbn.Text = book.Isbn;
            txtPublisher.Text = book.PublisherName;
            txtAuthor.Text = book.AuthorName;
            txtCategory.Text = book.CategoryName;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            Book book = new Book();

            book.BookId = bookId;

            book.Title = txtTitle.Text;
            book.Isbn = txtIsbn.Text;
            book.PublisherName = txtPublisher.Text;
            book.AuthorName = txtAuthor.Text;
            book.CategoryName = txtCategory.Text;

            book.EditBook(connectionString, book);

            Response.Redirect("Books.aspx");

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books.aspx");
        }
    }
}