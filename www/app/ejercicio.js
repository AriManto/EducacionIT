/**
 * 1) Crear dos archivos de texto (texto1.txt y texto2.txt) con el contenido que quieran
 * 
 * 2) Agarrar los dos botones del HTML
 * 
 * 3) Asignarles un evento de click
 * 
 * 4) El callback del click de cada boton tiene que ir a pedir el archivo que le corresponda y mostrarlo dentro del elemento <p>
 * 
 */

 let btn1 = document.querySelector('#uno');
 let btn2 = document.querySelector('#dos');
 let p = document.querySelector('p');

 btn1.addEventListener("click", function(){
    Ajax("TEXTO1.txt");
 });

 btn2.addEventListener("click", function(){
    Ajax("TEXTO2.txt");
 });

 function Ajax(url) {
     let xhr = new XMLHttpRequest;
     xhr.open("GET",url);
     xhr.onload = function(){
         if(xhr.status==200){
             p.innerHTML = xhr.response;
         }
     }
 }


 /*
  btn1.addEventListener("click", function(){
    let xhr = new XMLHttpRequest;
    xhr.open("GET","TEXTO1.txt");
    xhr.onload = function(){
        if(xhr.status==200){
            p.innerHTML = xhr.response;
        }
    }
    xhr.send();
 });

 btn2.addEventListener("click", function(){
    let xhr = new XMLHttpRequest;
    xhr.open("GET","TEXTO2.txt");
    xhr.onload = function(){
        if(xhr.status==200){
            p.innerHTML = xhr.response;
        }
    }
    xhr.send();
 });
 */