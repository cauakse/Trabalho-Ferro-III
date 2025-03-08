function FiltraValores() {
    const URL_TO_FETCH = 'search-servlet';
    // Captura o valor do input
    const valorDeBusca = document.getElementById("valorDeBusca").value;

    // Monta o corpo da requisição
    const formData = new URLSearchParams();
    formData.append("valorDeBusca", valorDeBusca);

    fetch(URL_TO_FETCH, {method: 'POST', body: formData,        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },})
        .then(response=> {return response.text();}).then(
            window.location.reload()
    )

}