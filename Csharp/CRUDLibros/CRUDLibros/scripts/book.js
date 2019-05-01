let botonDelete = document.querySelector("#btnDeleteBook")


botonDelete.addEventListener("click", function (e) {
    //e.preventDefault()
    console.log("Apretaron boton")

    let r = confirm("Realmente lo quiere eliminar?");
    if (r == false) {
        e.preventDefault()
        console.log("Libro no Eliminado")
    }
    else {
        console.log("Libro Eliminado")
    }

})