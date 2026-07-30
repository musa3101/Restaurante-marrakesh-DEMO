# Últimos Cambios de la Sesión

## ¿Qué se ha hecho hoy?
1. **Desarrollo Completo de la Sección Pere Garau (`/peregarau`)**:
   - **Landing Page (`peregarau/index.html`)**:
     * Hero despejado con foto real iluminada, título y botón `VER CARTA DIGITAL` en el extremo inferior.
     * Carrusel Swiper cinematográfico (5s por foto, fundido cruzado de 2.2s y zoom Ken Burns).
     * Preloader de 3.5s con estrella marroquí y letras `L O A D I N G` en rojo, dorado y verde esmeralda al derecho, más el sello `PERE GARAU • PALMA`.
     * Cabecera con menú hamburguesa desplegable (tipografía Cinzel, bloqueo de scroll) y botón oficial a TikTok (`https://vm.tiktok.com/ZN8eSq29A/`).
     * Teléfono y WhatsApp actualizados al número del dueño (+34 632 69 21 91).
   - **Carta Digital QR (`peregarau/menu.html`)**:
     * Carta ultra limpia multi-idioma (ES, EN, FR) para escaneo en mesa, sin estorbos ni textos sobrepuestos.
   - **Favicon & Vista Previa Open Graph**:
     * Configurado Favicon oficial con el logo redondo y etiquetas Open Graph (`og:image`, `og:title`, etc.) para una vista previa impecable al compartir por WhatsApp o redes sociales.

2. **Ajustes en la Web Principal (`index.html` y `menu.html`)**:
   - **Cambio de Nombre de Tienda**: Cambiada la etiqueta de *"Llevant"* por **`Plaza Columnas`** (`Francesc Barceló i Combis, 4`) en la sección "Dónde Estamos".
   - **Limpieza de Carta (`menu.html`)**: Eliminadas las pestañas flotantes y las insignias de texto sobrepuestas sobre las fotos de la carta.

3. **Documentación & Repositorio (`README.md`)**:
   - Creado un `README.md` profesional con la **Tabla de Enlaces Oficiales de Cloudflare Pages** destacados en la portada del repositorio en GitHub y GitLab.

4. **Fusión & Despliegue en Vivo en Cloudflare Pages**:
   - Código auditado, fusionado de `dev` a `main` y publicado en producción en **GitHub**, **GitLab** y **Cloudflare Pages**:
     * 🌐 Web Principal: [`tacosmarrakech.pages.dev`](https://tacosmarrakech.pages.dev/)
     * 🕌 Landing Pere Garau: [`tacosmarrakech.pages.dev/peregarau/`](https://tacosmarrakech.pages.dev/peregarau/)
     * 📲 Carta Digital QR: [`tacosmarrakech.pages.dev/peregarau/menu`](https://tacosmarrakech.pages.dev/peregarau/menu)
     * 📺 Web Smart TV: [`tacosmarrakech.pages.dev/tv/`](https://tacosmarrakech.pages.dev/tv/)

## Archivos modificados y creados
- `peregarau/index.html` (Landing page del restaurante de Pere Garau).
- `peregarau/menu.html` (Carta digital para código QR).
- `menu.html` (Carta digital de la web principal).
- `index.html` (Cambio a Plaza Columnas y enlace a Pere Garau).
- `README.md` (Tabla de enlaces oficiales en la portada).
- `docs/SESSION_LATEST_ES.md` (Registro detallado de cambios de la sesión).
- `docs/ROADMAP.md` (Estado del proyecto).

## Problemas solucionados
- Creada la landing e infraestructura para Pere Garau con carta digital QR dedicada sin alterar la web principal.
- Corregida la orientación e intervalos del preloader.
- Configurada la vista previa de WhatsApp / Open Graph y Favicons oficiales.

## Qué queda pendiente
- Imprimir pegatinas físicas de código QR apuntando a `https://tacosmarrakech.pages.dev/peregarau/menu`.
