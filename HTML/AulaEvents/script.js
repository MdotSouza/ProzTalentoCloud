const linkPerfil = document.getElementById("link-perfil")
const navPerfil = document.getElementById("nav-perfil")
const linkPerfilDados = document.getElementById("link-perfil-dados") 

linkPerfil.addEventListener("mouseover", () => {
  navPerfil.style.display = "block"
})

document.addEventListener("keyup",(e) => {
    //Verifica se o dígito 1 foi clicado 
    let isDigito1 = (e.code == "Digit1" || e.code == "Numpad1")
    
    if (navPerfil.style.display == "block" && isDigito1){
        linkPerfilDados.click()
    }

    if (isDigito1) {
        navPerfil.style.display = "block"    
    }
    
    if (e.code == "Escape") {
        navPerfil.style.display = "none"
    }
})  