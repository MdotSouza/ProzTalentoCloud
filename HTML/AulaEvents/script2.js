const linkHome = document.getElementById("link-home")

document.addEventListener("keyup",(e) => {
    if (e.code == "Backspace") {
        linkHome.click()
    }
})
