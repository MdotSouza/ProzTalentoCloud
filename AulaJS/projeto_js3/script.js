
document.getElementById('titulo').innerHTML = 'Bem-vindo ao Meu Site';

var produtoContainer = document.createElement('div');
produtoContainer.setAttribute('id', 'produto');

var nomeProduto = document.createElement('h2');
nomeProduto.innerHTML = 'Produto XYZ';

var descricaoProduto = document.createElement('p');
descricaoProduto.innerHTML = 'Este é um produto incrível que você vai adorar!';

var precoProduto = document.createElement('p');
precoProduto.innerHTML = 'Preço: R$ 99,99';

produtoContainer.appendChild(nomeProduto);
produtoContainer.appendChild(descricaoProduto);
produtoContainer.appendChild(precoProduto);

document.body.appendChild(produtoContainer);