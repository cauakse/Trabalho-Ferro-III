document.addEventListener("DOMContentLoaded", function () {
    const nomeMusicaInput = document.getElementById("nomeMusica");
    const cantorInput = document.getElementById("cantor");

    const regex = /^[a-zA-Z0-9_ ]+$/;

    function limparCaracteresInvalidos(input) {
        let valor = input.value;

        let valorLimpo = valor.replace(/[^a-zA-Z0-9_ ]/g, "");

        if (valor !== valorLimpo) {
            input.value = valorLimpo;
        }
    }

    nomeMusicaInput.addEventListener("input", function () {
        limparCaracteresInvalidos(nomeMusicaInput);
    });

    cantorInput.addEventListener("input", function () {
        limparCaracteresInvalidos(cantorInput);
    });
});

function EnviarArquivo(){

    const URL_TO_FETCH = 'envio-servlet';

    var formData = new FormData(document.getElementById("fform"));

    fetch(URL_TO_FETCH, { method: 'POST',body: formData })
        .then(response=> {return response.text();})
}

