/*

*/

//let btn = document.querySelector('button');
let form = document.querySelector('form');
let inNombre = document.querySelector('input[placeholder="Nombre"]');
let inComentario = document.querySelector('textarea[placeholder="Comentario"]');
let ul = document.querySelector('ul');
let contador = 1;
form.addEventListener('submit', function(e){
    e.preventDefault();
    let li = document.createElement('li'); //Al estar dentro de la función crea nuevos elementos, 
                                           //sino se sobreescribe el primero
    li.innerHTML = "<p>Nombre : " + inNombre.value +
                "<p>Comentario : " + inComentario.value;
    ul.appendChild(li);
});