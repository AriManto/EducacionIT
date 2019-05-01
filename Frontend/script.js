/*
TIPOS DE DATOS:
*Primitivos
        String : Es una cadena de caracteres. Comillas simples o dobles
        Number : Todos los números, es una sola categoría
        Boolean : true, false
        undefined : variables sin valor o una función sin retorno
        NULL

*Objeto
        Object
        Array
        Function
    Objeto:
        let persona = {nombre: "Horacio", edad: 29}
    Array:
        let frutas = ["Manzanas", "Bananas", "Frutillas"]

    Funcion:
        function foo() {
            console.log(object)
        }
*/

// Seleccionar un nodo (etiqueta)

//Formas "viejas"
let item_dos = document.getElementById("dos");
let items = document.getElementsByClassName("item");
let li = document.getElementsByTagName("li");

//Formas "nuevas"
//querySelector agarra la primera etiqueta que encuentra. Para agarrar todas, se usa
//querySelectorAll
let itemDos = document.querySelector('#dos');
let Items = document.querySelectorAll(".item");
let Li = document.querySelectorAll("li");

let ul = document.querySelector('ul');

//Reloj
let reloj = document.querySelector('#reloj');
setInterval(function() {
        let hora = new Date().toLocaleTimeString();
        reloj.innerText = hora;}, 1000)

// Crear un elemento nuevo
let li2 = document.createElement("li");
li2.innerText = "Item Nuevo"

// Agregar elementos al DOM
// NodoDestino.appendChild(nuevoNodo)
ul.appendChild(li2);
//Los elementos que ya fueron agregados al DOM, si intento
//agregarlo de nuevo en otro lugar se va a cambiar de lugar,
// no se duplica. (Ya que mantiene la referencia al mismo nodo)
//ul.removechild(li2);

/*
forEach
let arr = ["hola", "chau", "break", "sanguche", "cafe"]
arr.forEach(
    function(elemento,indice){
        console.log("Elemento: ",elemento);
        console.log("Indice: ", indice);
    }
)
*/

/*
1) Crear un nuevo elemento <ul>
2) Agregar el ul creado al body
3) Crear un array con los elementos que quieran
4) Iterar sobre el array
5) Por cada vuelta, hay que crear un elemento <li>
y agregarlo al nuevo <ul>
*/

let lista = document.createElement("ul");
let main = document.querySelector("main");
main.appendChild(lista);
let nombres = ["Juan","Sofía", "Gabriel", "Micaela",
                "Pablo", "Lucía"]
nombres.forEach( function(nombre){
    let itemLista = document.createElement("li");
    itemLista.innerText = nombre;
    main.appendChild(itemLista);
});

/*
    Evento: ejecutar una función (callback) como respuesta
    a una acción
*/

let btn = document.querySelector("button");
/*
btn.onclick = function(){
    console.log("Hola");
}
*/
btn.addEventListener('click', function(){
    console.log("Hola");
});
btn.addEventListener('click', function(){
    console.log("Chau");
});

let form = document.querySelector("form");

// Mostrar por consola los valores de cada input, 
// select y textarea del formulario
let inputNombre= document.querySelector('input[name="nombre"]');
let inputPassword = document.querySelector('input[name="pass"]');
let select = document.querySelector('select[name="pais"]');
let textArea = document.querySelector('textarea');

form.addEventListener('submit', function(e){
    e.preventDefault();
    //Hay eventos que ya vienen con un comportamiento por
    //defecto
    //console.log(e);
    console.log(
        "Nombre: " + inputNombre.value +
        "\nPassword: " + inputPassword.value +
        "\nPaís: " + select.value +
        "\nTexto: " + textArea.value
    )
});