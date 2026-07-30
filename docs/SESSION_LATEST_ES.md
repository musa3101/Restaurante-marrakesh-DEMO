# Últimos Cambios de la Sesión

## ¿Qué se ha hecho hoy?
1. **Desarrollo Completo de la Sección Pere Garau (`/peregarau`)**:
   * **Landing Page (`peregarau/index.html`)**:
     - **Hero Fotográfico Despejado:** Título de 2 líneas (`TACOS MARRAKECH PERE GARAU`) y botón compacto (`VER CARTA DIGITAL`) posicionados juntos en el extremo inferior directamente sobre la imagen, dejando el 85% del centro de la foto totalmente libre e iluminado.
     - **Carrusel Swiper Cinematográfico:** Ajustada la transición de cambio de fotos a 5.0 segundos de permanencia con fundido cruzado lento de 2.2s y animación de zoom Ken Burns.
     - **Preloader Personalizado:** Pantalla de carga ligera de 3.5s con la estrella marroquí animada, sello `PERE GARAU • PALMA` y las letras **`L O A D I N G`** alternando en rojo marroquí, dorado y verde esmeralda al derecho.
     - **Cabecera & Menú Hamburguesa:** Cabecera con título centrado, botón directo a TikTok (`https://vm.tiktok.com/ZN8eSq29A/`) y botón de hamburguesa (`☰`) que despliega un panel estilizado idéntico al de la web principal (tipografía serif Cinzel, separador estrella marroquí verde/rojo y bloqueo de scroll vertical del fondo).
     - **Contacto Actualizado:** Actualizados el teléfono de llamadas y el enlace directo de WhatsApp con el número del dueño de Pere Garau (`+34 632 69 21 91`).
   * **Carta Digital Dedicada (`peregarau/menu.html`)**:
     - Página ultra limpia diseñada para escaneo mediante código QR en las mesas del restaurante.
     - Selector inteligente de idiomas (ES, EN, FR) que conmuta dinámicamente las 12 páginas procesadas del menú en formato WebP de alta definición.
     - Navegación pegajosa con botón inteligente "Atrás" que regresa a la landing o al navegador.
2. **Tarjeta en la Web Principal (`index.html`)**:
   * Añadido el botón principal **"Ver Restaurante"** (apuntando a `peregarau`) y **"Ver Mapa"** dentro de la tarjeta de Pere Garau en la sección "Dónde Estamos".
3. **Fusión de Código (Git Merge)**:
   * Código revisado, limpiado y fusionado satisfactoriamente de la rama **`dev`** a la rama principal **`main`** tras la confirmación explícita del usuario.

## Archivos modificados y creados
- `peregarau/index.html` (Landing page del restaurante de Pere Garau).
- `peregarau/menu.html` (Carta digital para código QR).
- `peregarau/hero/` y `peregarau/menu/` (Recursos fotográficos WebP/JPG procesados).
- `index.html` (Enlace al restaurante de Pere Garau en la tarjeta de la tienda).
- `docs/SESSION_LATEST_ES.md` (Registro detallado de cambios de la sesión).
- `docs/ROADMAP.md` (Roadmap del proyecto).

## Problemas solucionados
- Creada una experiencia independiente e impecable para el local de Pere Garau con carta digital dedicada sin tocar ni alterar la web principal del restaurante.

## Qué queda pendiente
- Imprimir pegatinas de código QR físicas apuntando a `https://tacosmarrakech.pages.dev/peregarau/menu.html`.
