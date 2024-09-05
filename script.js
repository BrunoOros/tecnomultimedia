document.addEventListener('DOMContentLoaded', () => {
    const contentDiv = document.getElementById('contenido');

    const backgroundColors = {
        'linea1': 'background-color-1',
        'linea2': 'background-color-2',
        'linea3': 'background-color-3'
    };

    function updateContent(id) {
        // Oculta todas las secciones de contenido
        document.querySelectorAll('.content-section').forEach(section => {
            section.style.display = 'none';
        });

        // Muestra la sección de contenido correspondiente
        const selectedSection = document.getElementById('info-' + id);
        if (selectedSection) {
            selectedSection.style.display = 'flex'; // Cambiado a 'flex'
        }

        // Cambia el color de fondo
        contentDiv.className = 'contenido ' + backgroundColors[id];
    }

    document.querySelectorAll('.menu-icon').forEach(icon => {
        icon.addEventListener('click', () => {
            const id = icon.id;
            updateContent(id);
        });
    });

    // Simula un clic en la primera imagen al cargar la página
    const firstImage = document.getElementById('linea1');
    if (firstImage) {
        firstImage.click();
    }
});
