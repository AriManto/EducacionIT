/**
 * AJAX : Async Javascript and XML 
 */

//Sincronia vs Asincronia 
//Event Loop 

//Contadores 
//setTimeout : Ejecuta una funcion despues de como minimo N milisegundos
//setInterval : Ejecuta una funcion cada , como minimo, N milisegundos

//http://latentflip.com/loupe/

//XHR = XMLHttpRequest 
let xhr = new XMLHttpRequest
//XHR.open(metodo String, url String) 
xhr.open("GET","info.txt")

//load = Se dispara cuando el readyState == 4
xhr.addEventListener("load",function(){
    if (xhr.status == 200) {
        let p = document.createElement("p")
        p.innerText = xhr.response
        document.body.appendChild(p)
    }
})

xhr.send()



/**
 * SPA : Single Page Application
 * 
 * Son paginas en donde el contenido central es dinamico y su estructura es estatica 
 * 
 * 
 * 
 * 
 * XHR.response = me da el contenido del archivo que fui a pedir
 * XHR.readyState = me da el estado del pedido
 * XHR.status = me da el codigo de status de HTTP
 * 
 * Headers : Metainformacion que viaja en cada solicitud de HTTP
 * 
 * Content-Type : Determina el tipo de archivo
 * Content-Length : Determina el tamaño del archivo
 * Accept-Ranges : La forma de medicion del tamaño de un archivo
 * 
 * 
 * 
 * 1XX : Informacion
 * 
 * 2XX : Mensajes buenos
 *     200 - OK
 *     201 - Created
 *     202 - Accepted
 * 
 * 3XX : Redireccion
 *      304 - Not Modified ( simil 200 )
 * 
 * 4XX : Errores del cliente
 *      400 - Bad Request 
 *      401 - Unauthorized
 *      403 - Forbidden
 *      404 - Not Found 
 *      405 - Method Not Allowed
 *      418 - I´m a Teapot (Esto es joda)
 *      
 * 5XX : Errores del servidor
 * 
 *      500 : Internal Server Error 
 * 
 * 
 * 
 * 
 * 
 * HTTP : Metodos / Verbos
 * 
 * GET
 * POST
 * DELETE
 * PUT
 * PATCH
 * REQUEST
 * HEADERS
 * OPTIONS
 * 
 * 
 * 
 * La propiedad readyState de un objeto XHR nos indica como se encuentra el pedido 
 * 
 * 0 - Objeto inicializado
 * 1 - Objeto configurado 
 * 2 - Headers fueron enviados y recibidos
 * 3 - Descargando informacion
 * 4 - Pedido finalizado
 * 
 * 
 * SERVIDORES : Un programa que esta en una maquina corriendo las 24/7 y escucha pedidos(request) a traves de un puerto(port) y resuelve respuestas
 * 
 * Host : IP(127.0.0.1) - URL(localhost)
 * Puerto : 80(HTTP) - 443(HTTPS)
 * Root : E:/www/
 * 
 * Apache : index.php -> index.html -> Directorios
 */

