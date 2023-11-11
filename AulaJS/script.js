let quantidadeSubtotal = document.getElementById("quantidade-subtotal")
let valorSubtotal = document.getElementById("valor-subtotal")

let subtotalInfo = {
  quantidade: 1,
  valor: 11.66
}

// ------ VARIAVEIS------------ //
let btnAddProduto01 = document.querySelector("#btn-adicionar-produto-01")
let btnSubProduto01 = document.querySelector("#btn-subtrair-produto-01")
let quantidadeProduto01 = document.querySelector("#quantidade-produto-01")
const valorInicial = subtotalInfo.valor

// ------ FUNÇÕES -------------- //
function atualizarSubtotal(){
  quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens"
  valorSubtotal.innerText = subtotalInfo.valor.toFixed(2)
}
atualizarSubtotal()

function adicionarUm() {
  quantidadeProduto01.value = Number(quantidadeProduto01.value) + 1
  subtotalInfo.quantidade += 1
  subtotalInfo.valor += valorInicial
  atualizarSubtotal()
}


function removerUm(){
  if (quantidadeProduto01.value > 0) {
    quantidadeProduto01.value -= 1
    subtotalInfo.quantidade -= 1
    subtotalInfo.valor -= valorInicial
    atualizarSubtotal()
  }
}

// ------- EVENTOS --------------//
btnAddProduto01.addEventListener("click",adicionarUm)
btnSubProduto01.addEventListener("click",removerUm)