/*
1) Agarrar el formulario y asignarle un evento submit
2) Agarrar el valor de cada control del formulario y validarlos segun corresponda:
        *nombre y apellido: 2-30 caracteres, sin espacios, sin caracteres especiales, sin numeros
        *nombre de usuario: 6-15 caracteres, sin espacios, puede tener numeros y  _ - .
        *edad: 2 caracteres, mayor a 18, sin caracteres alfabeticos, sin espacios, sin caracteres especiales
        *descripcion: 0-200 caracteres, alfanumerico, admite espacios y ! ? .
3) Si todo valida bien, se tiene que guardar el usuario en un array y mostrar un elemento <p> que diga "Se guardó el usuario" en verde
4) Si algo valida mal se tiene que ver un elemento <p> abajo del formulario que diga el error en rojo
5) Las validaciones tienen que pasar en :
        -el blur de cada campo
        -el keyup de solamente el campo usuario. hay que buscar si el usuario ya existe en el array
*/
let form = document.querySelector("form");
let nombre = document.querySelector('input[placeholder="nombre"]');
let apellido = document.querySelector('input[placeholder="apellido"]');
let nombreUsuario = document.querySelector('input[placeholder="nombre de usuario"]');
let edad = document.querySelector('input[placeholder="edad"]');
let descripcion = document.querySelector('textarea[placeholder="descripcion"]');

let mensaje = document.createElement('p');

let regexNombre = /^[a-zA-Z]{2,30}$/; //Sirve para el de apellido también
let regexUsername = /^[a-zA-Z0-9_.-]{6,15}$/;  //Me permite pasar el \ tambien
let regexEdad = /^\d\d$/;
let regexDescripcion = /^[\w\s!?,.]{0,200}$/;

let nombreFlag = false;
let apellidoFlag = false;
let nombreUsuarioFlag = false;
let edadFlag = false;
let descripcionFlag = false;
let userRepetido = false;
let estado = document.querySelector('.estado');
let usuarios = [{"NombreDeUsuario":"JuanLopez"}]; //Inicializo el array con un username

form.addEventListener("submit", function(e) {
    e.preventDefault();
    if(nombreFlag && apellidoFlag && nombreUsuarioFlag && edadFlag && descripcionFlag){
        //Exito de validacion de campos
        //Verificar si el usuario está repetido
        for (let i = 0; i < usuarios.length; i++){
            if(usuarios[i].NombreDeUsuario.toLowerCase()==nombreUsuario.value.toLowerCase())
            {
                userRepetido = true;
            }
        }
        if (!userRepetido){
            //Usuario único
            usuarios.push({
                "Nombre": nombre.value,
                "Apellido": apellido.value,
                "NombreDeUsuario": nombreUsuario.value,
                "Edad":edad.value,
                "Descripcion":descripcion.value
            });
            form.reset();
            nombreFlag = false;
            apellidoFlag = false;
            nombreUsuarioFlag = false;
            edadFlag = false;
            descripcionFlag = false;
            userRepetido = false;
            
            estado.innerHTML = "Se ha guardado el usuario!";
            estado.classList.remove('rojo');
            estado.classList.add('verde');
        } else {
            //Usuario repetido
            estado.innerHTML = "El nombre de usuario ya existe, intente con otro";
            estado.classList.remove('verde');
            estado.classList.add('rojo');
            userRepetido = false;
        }
         //Para volver a verificar
    
        
    } else {
        //Error de validación de campos
        estado.innerHTML = "Error! Verifique los campos"
        estado.classList.remove('verde');
        estado.classList.add('rojo');
    }
});

nombre.addEventListener("blur", function(e){
    if(regexNombre.test(nombre.value)){
        nombreFlag = true;
        console.log("Nombre correcto!");
    } else {
        nombreFlag = false;
        console.log("Nombre incorrecto");
    }
});

apellido.addEventListener("blur", function(e){
    if(regexNombre.test(apellido.value)){
        apellidoFlag = true;
        console.log("Apellido correcto!");
    } else {
        apellidoFlag = false;
        console.log("Apellido incorrecto");
    }
});

nombreUsuario.addEventListener("blur", function(e){
    if(regexUsername.test(nombreUsuario.value)){
        nombreUsuarioFlag = true;
        console.log("Nombre de usuario correcto!");
    } else {
        nombreUsuarioFlag = false;
        console.log("Nombre de usuario incorrecto");
    }
});

//nombreUsuario.addEventListener("keyup", function(e){

//})
edad.addEventListener("blur", function(e) {
    if(regexEdad.test(edad.value)&&edad.value>=18){
        edadFlag = true;
        console.log("Edad correcta!");
    } else {
        edadFlag = false;
        console.log("Edad incorrecta");
    }
});

descripcion.addEventListener("blur", function(e) {
    if(regexDescripcion.test(descripcion.value)){
        descripcionFlag = true;
        console.log("Descripcion correcta!");
    } else {
        descripcionFlag = false;
        console.log("Descripcion incorrecta");
    }
});


/*
Template de objeto
{
    "Nombre": "",
    "Apellido": "",
    "NombreDeUsuario": "",
    "Edad": ,
    "Descripcion": ""
}

*/ 