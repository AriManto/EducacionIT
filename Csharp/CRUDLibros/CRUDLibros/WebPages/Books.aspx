<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="CRUDLibros.WebPages.Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../style.css" />
    <link rel="stylesheet" type="text/css" href="../books.css" />
    <title>Libros</title>
    <style type="text/css">
        .auto-style1 {
            width: 76px;
            height: 72px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
            <h1>
                <img alt="" class="auto-style1" src="../Images/Books-icon.png" />Libros</h1>
    
        <asp:GridView ID="gridBookList" runat="server" OnRowDataBound="gridBookList_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField DataField="BookID" HeaderText="IDLibro" />
                 <asp:BoundField DataField="Title" HeaderText="Título" />
                 <asp:BoundField DataField="Isbn" HeaderText="ISBN" />
                 <asp:BoundField DataField="PublisherName" HeaderText="Editorial" />
                 <asp:BoundField DataField="AuthorName" HeaderText="Autor" />
                 <asp:BoundField DataField="CategoryName" HeaderText="Categoría" />
             </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="False" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
        <br />

        <asp:Button ID="btnNewBook" runat="server" Text="Nuevo" OnClick="btnNewBook_Click" />
        <asp:Button ID="btnEditBook" runat="server" Text="Editar" OnClick="btnEditBook_Click" />
        <asp:Button ID="btnDeleteBook" runat="server" Text="Eliminar" OnClick="btnDeleteBook_Click" />
 
    
     </div>
     </form>
    <script src="/scripts/book.js"></script>
</body>
</html>

