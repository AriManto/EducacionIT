<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewBook.aspx.cs" Inherits="CRUDLibros.WebPages.NewBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
     <link rel="stylesheet" type="text/css" href="../style.css" />
     <link rel="stylesheet" type="text/css" href="../books.css" />
    <title>Nuevo Libro</title>
     <style type="text/css">
         .auto-style1 {
             width: 76px;
             height: 72px;
         }
     </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>

        <h1>
            <img alt="" class="auto-style1" src="../Images/Books-icon.png" />Nuevo Libro</h1>
       
            <asp:Label ID="lblTitle" runat="server" Text="Título:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
            <span class="mensaje titulo"></span>
            <br />

            <asp:Label ID="LblIsbn" runat="server" Text="ISBN:"></asp:Label>
            <br />
            <asp:TextBox ID="txtIsbn" runat="server" Width="300px"></asp:TextBox>
            <span class="mensaje isbn"></span>
            <br /> 

            <asp:Label ID="lblPublisher" runat="server" Text="Editorial:"></asp:Label>
            <br />
            <asp:TextBox ID="txtPublisher" runat="server" Width="300px"></asp:TextBox>
             <span class="mensaje publisher"></span>
            <br />

            <asp:Label ID="lblAuthor" runat="server" Text="Autor:"></asp:Label>
             <br />
            <asp:TextBox ID="txtAuthor" runat="server" Width="300px"></asp:TextBox>
            <span class="mensaje autor"></span>
            <br />
            
            <asp:Label ID="lblCategory" runat="server" Text="Género:"></asp:Label>
             <br />
            <asp:TextBox ID="txtCategory" runat="server" Width="300px"></asp:TextBox>
            <span class="mensaje categoria"></span>

            <p />
            <asp:Button ID="btnOK" runat="server" Text="Aceptar" OnClick="btnOK_Click" disabled/>
            <asp:Button ID="btnCancel" runat="server" Text="Cancelar" OnClick="btnCancel_Click" />

    </div>
    </form>
    <script src="/scripts/validacion.js"></script>
</body>
</html>

