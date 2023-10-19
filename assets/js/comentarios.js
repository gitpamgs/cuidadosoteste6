/*let coments = document.querySelector(".coments");

[...coments.children].reverse().forEach(i => coments.append(i)); 

function swap(e) {
    let card = document.querySelector(".card:last-child");
    card.style.animation = "swap 700ms forwards";

    setTimeout(() => {
        card.style.animation = "";
        coments.prepend(card);
    }, 700);
}

function swapV(v) {
    let card = document.querySelector(".card:last-child");
    card.style.animation = "swapV 700ms forwards";

    setTimeout(() => {
        card.style.animation = "";
        coments.prepend(card[ultimo]);
    }, 700);
}*/


let coments = document.querySelector(".coments");
let contadorElement = document.getElementById("contador");
let indiceAtual = 0;
let contador = 1;


[...coments.children].reverse().forEach(i => coments.append(i));
atualizarContador();

function swap(e) {
    let card = document.querySelector(".card:last-child");
    card.style.animation = "swap 700ms forwards";

    setTimeout(() => {
        card.style.animation = "";
        coments.prepend(card);
        indiceAtual++;
        contador++;

        if (contador > 3) {
            contador = 1;
        }

        atualizarContador();

        // Adicione a lógica para ocultar imagens com base no valor do contador
        if (contador === 2) {
            // Se o contador for igual a 2, oculte as imagens dos cartões 1 e 3
            hideImagesExcept([2]);
        } else if (contador === 3) {
            // Se o contador for igual a 3, oculte as imagens dos cartões 1 e 2
            hideImagesExcept([3]);
        } else if (contador === 1) {
            // Se o contador for igual a 1, oculte as imagens dos cartões 2 e 3
            hideImagesExcept([1]);
        }

        updateInfo();
    }, 700);
}

// Função para ocultar imagens em cartões com IDs diferentes dos especificados
function hideImagesExcept(exceptIDs) {
    var allCards = document.querySelectorAll(".card");
    allCards.forEach(function (card) {
        var cardID = parseInt(card.getAttribute("data-id"));
        var image = card.querySelector(".card-img");
        if (image) {
            if (!exceptIDs.includes(cardID)) {
                image.style.display = "none";
            } else {
                image.style.display = "block";
            }
        }
    });
}


function atualizarContador() {
    contadorElement.textContent = `Card ${contador} de ${coments.children.length}`;

    // Encontra o cartão atual e verifica se ele tem data-imagem="true"
    var currentCard = document.querySelector(".card[data-id='" + contador + "']");
    var hasImage = currentCard.getAttribute("data-imagem");

    if (hasImage === "true") {
        // Se o cartão atual tem data-imagem="true", exibe a imagem
        var image = currentCard.querySelector(".card-img");
        if (image) {
            image.style.display = "block";
        }
    } else {
        // Se o cartão atual não tem data-imagem="true", oculta todas as imagens
        var images = document.querySelectorAll(".card .card-img");
        images.forEach(function (img) {
            img.style.display = "none";
        });
    }

    // Oculta todas as outras imagens nos outros cartões que não são o cartão atual
    var otherCards = document.querySelectorAll(".card:not([data-id='" + contador + "'])");
    otherCards.forEach(function (card) {
        var image = card.querySelector(".card-img");
        var botao = document.getElementById("botso");
        if (image) {
            image.style.display = "none";
        }
    
    });
}

    
