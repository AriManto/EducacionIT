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
    public partial class NewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string connectionString = WebConfigurationManager.ConnectionStrings["LibraryDBConnectionString"].ConnectionString;
       
        protected void btnOK_Click(object sender, EventArgs e)
        {
            Book book = new Book();

            book.Title = txtTitle.Text;
            book.Isbn = txtIsbn.Text;
            book.PublisherName = txtPublisher.Text;
            book.AuthorName = txtAuthor.Text;
            book.CategoryName = txtCategory.Text;

            book.CreateBook(connectionString, book);


            Response.Redirect("Books.aspx");

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books.aspx");
        }
    }
}