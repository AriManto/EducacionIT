console.log("conectado")

let titulo = document.querySelector('#txtTitle');
let isbn = document.querySelector('#txtIsbn');
let publisher = document.querySelector('#txtPublisher');
let autor = document.querySelector('#txtAuthor');
let genero = document.querySelector('#txtCategory');


let regexTitulo = /.{1,50}/
let regexISBN = /[0-9]{13,20}/
let regexEditorial = /.{1,50}/
let regexAutor = /[a-zA-Z\s]{1,50}/
let regexGenero = /[a-zA-z\s]{1,50}/
console.log(titulo.value)

titulo.addEventListener("blur", function(){
    let msjTit = document.querySelector('.mensaje.titulo');
    if (regexTitulo.test(titulo.value)){
        msjTit.innerHTML="<i class='fas fa-check-circle'></i> Correcto";
        msjTit.classList.remove('error');
        msjTit.classList.add('correcto');
        
    } else {
        msjTit.innerHTML="<i class='fas fa-times-circle'></i> Error";
        msjTit.classList.remove('correcto');
        msjTit.classList.add('error');
    }
    checkearCampos();
});

isbn.addEventListener("blur", function(){
    let msjIsbn = document.querySelector('.mensaje.isbn');
    if (regexISBN.test(isbn.value)){
        msjIsbn.innerHTML="<i class='fas fa-check-circle'></i> Correcto";
        msjIsbn.classList.remove('error');
        msjIsbn.classList.add('correcto');
    } else {
        msjIsbn.innerHTML="<i class='fas fa-times-circle'></i> Error";
        msjIsbn.classList.remove('correcto');
        msjIsbn.classList.add('error');
    }
    checkearCampos();
});

publisher.addEventListener("blur", function(){
    let msjPub = document.querySelector('.mensaje.publisher');
    if (regexEditorial.test(publisher.value)){
        msjPub.innerHTML="<i class='fas fa-check-circle'></i> Correcto";
        msjPub.classList.remove('error');
        msjPub.classList.add('correcto');
    } else {
        msjPub.innerHTML="<i class='fas fa-times-circle'></i> Error";
        msjPub.classList.remove('correcto');
        msjPub.classList.add('error');
    }
    checkearCampos();
});

autor.addEventListener("blur", function(){
    let msjAut = document.querySelector('.mensaje.autor');
    if (regexAutor.test(autor.value)){
        msjAut.innerHTML="<i class='fas fa-check-circle'></i> Correcto";
        msjAut.classList.remove('error');
        msjAut.classList.add('correcto');
    } else {
        msjAut.innerHTML="<i class='fas fa-times-circle'></i> Error";
        msjAut.classList.remove('correcto');
        msjAut.classList.add('error');
    }
    checkearCampos();
});

genero.addEventListener("blur", function(){
    let msjCat = document.querySelector('.mensaje.categoria')
    if (regexGenero.test(genero.value)){
        msjCat.innerHTML='<i class="fas fa-check-circle"></i> Correcto';
        msjCat.classList.remove('error');
        msjCat.classList.add('correcto');
    } else {
        msjCat.innerHTML="<i class='fas fa-times-circle'></i> Error";
        msjCat.classList.remove('correcto');
        msjCat.classList.add('error');
    }
    checkearCampos();
});

let btnOk = document.querySelector('#btnOK');

function checkearCampos(){
    if(regexTitulo.test(titulo.value)&&regexISBN.test(isbn.value)&&
    regexEditorial.test(publisher.value)&&regexAutor.test(autor.value)&&
    regexGenero.test(genero.value)){
        btnOk.removeAttribute("disabled","");
    }
    else {
        btnOk.setAttribute("disabled","");
    }
}

let inputs = document.querySelectorAll('input[type="text"]');
for (let i = 0; i<inputs.length; i++){
    inputs[i].addEventListener('keyup', checkearCampos);
}
document.querySelectorAll('.mensaje').innerHTML="<i class='fas fa-check-circle'></i>"
let botonDelete = document.querySelector("#btnDeleteBook")

"<i class='fas fa-times-circle'></i>"