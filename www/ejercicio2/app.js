/**
 * 1) Agarrar todos los links con una sola funcion
 * 2) Asignarles un evento de click y el callback de todos tiene que ser el mismo 
 * 3) Cancelar el evento por default
 * 4) El callback de todos tiene que hacer lo mismo y es ir a pedir por AJAX el archivo que le corresponde
 * 5) Con la respuesta del archivo, reezamplar el contenido HTML del elemento <main>
 */

 let links = document.querySelectorAll('a');
 for (let i = 0; i<links.length; i++){
    let url = links[i].innerText+".html"
    links[i].addEventListener("click",  function(){
        let xhr = new XMLHttpRequest;
        xhr.open("GET", url);
        xhr.onload = function(){
           if (xhr.status == 200){
           document.querySelector('main').innerHTML = xhr.response;
           }
       }
       xhr.send();
    });
 }

