window.addEventListener('load', eventos);
const $ = id => document.getElementById(id);

function eventos() {

    /*$('aplicar').addEventListener('click', (e)=>{
        e.preventDefault(e)
        setTimeout(aplicar, 1000);
    });

    function aplicar(e) {
        $('container').style.display = 'none'
    }*/
    $("alquilar").addEventListener('click', toggleForm)
    function toggleForm() {
        var formulario = document.getElementById("mi-formulario");
        if (formulario.style.display === "block") {
          formulario.style.display = "none";
        } else {
          formulario.style.display = "block";
        }
      }
}