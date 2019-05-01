//http://latentflip.com/loupe
//Web API
//Call Stack
//Callback Queue

// XHR = XMLHttpRequest

/*
    readyState indica como se encuentra el pedido
    0 : objeto inicializado
    1: objeto configurado
    2: los paquetes fueron enviados y recibidos
    3: descargando informacion
    4: pedido finalizado

    HTTP : metodos y verbos
    GET
    POST
    DELETE
    PUT
    PATCH
    REQUEST
    HEADER
    OPTIONS
*/

let xhr = new XMLHttpRequest;
//XHR.open(string Metodo, string url)
xhr.open("GET", "info.txt", true);
xhr.onreadystatechange = function(){
    if (xhr.readyState == 4 && xhr.status == 200){
        console.log(xhr.response)
    }
}
xhr.send();

/* 
    Servidores : Un programa que esta en una maquina corriendo 24/7 y escucha pedidos (request)
    a través de un puerto (port) y resuelve respuestas (response)
    Host : IP (127.0.0.1) - URL (localhost)
    Puerto : 80 (HTTP) - 443 (HTTPS)
    Root : E://www/

    Apache : index.php -> index.html -> Directorios (XAMPP)

*/