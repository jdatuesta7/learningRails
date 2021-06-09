document.addEventListener("DOMContentLoaded", () => {
    const sideBarCollapse = document.getElementById("sidebarCollapse")
    const sidebar = document.getElementById("sidebar")

    sideBarCollapse.addEventListener('click', () => {
        const sidebarAction = sidebar.classList.contains("d-none")
        
        if (sidebarAction) {
            sidebar.classList.remove("d-none")
        } else {
            sidebar.classList.add("d-none")
        }
    })
})