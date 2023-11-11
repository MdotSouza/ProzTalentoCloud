const titulo = document.getElementById("titulo")
const link = document.querySelector('a')

titulo.innerText = "BEM-VINDO"
link.innerText = "Entre no site"

const lista =  document.getElementById("lista-ordenada")

lista.innerHTML = `
                    <li>Python</li>
                    <li>JavaScript | CSS | HTML</li>
                    <li>Banco de Dados</li>
`