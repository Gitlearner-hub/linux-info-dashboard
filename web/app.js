document.addEventListener("DOMContentLoaded", () => {

    document.getElementById("hostname").textContent = "debian13";
    document.getElementById("os").textContent = "Debian GNU/Linux";
    document.getElementById("kernel").textContent = "6.x";
    document.getElementById("uptime").textContent = "3 días";

    document.getElementById("cpu").textContent = "4 CPU";
    document.getElementById("mem-used").textContent = "2 GB";

    // Función para actualizar fecha y hora automáticamente
    function updateDateTime() {
        const now = new Date();
        const dateTimeString = now.toLocaleString('es-ES', {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit'
        });
        
        const updateElement = document.getElementById("update-time");
        if (updateElement) {
            updateElement.textContent = "Última actualización: " + dateTimeString;
        }
    }
    
    // Actualizar inmediatamente
    updateDateTime();
    
    // Actualizar cada segundo
    setInterval(updateDateTime, 1000);

});
