document.addEventListener("DOMContentLoaded", () => {
    const sideBarCollapse = document.getElementById("sidebarCollapse")
    console.log("sidebar boton: ", sideBarCollapse)
    const sidebar = document.getElementById("sidebar")

    sideBarCollapse.addEventListener('click', () => {
        console.log("inside")
        const sidebarAction = sidebar.classList.contains("d-none")
        console.log(sidebarAction)
        if (sidebarAction) {//muestra sidebar
            sidebar.classList.remove("d-none")
        } else {//esconde sidebar
            sidebar.classList.add("d-none")
        }
    })
})