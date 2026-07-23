# Últimos Cambios de la Sesión

## ¿Qué se ha hecho hoy?
1. **Entorno de Desarrollo Local**:
   - Creado script `startup.sh` en la raíz para cambiar automáticamente a la rama `dev` e iniciar el servidor estático local en `http://localhost:3000`.
2. **Extracción y Optimización de la Carta**:
   - Extraídas las 9 páginas de `Carta.pdf` y convertidas a formato WebP optimizado de alta definición (ahorro del 80% en tamaño de descarga para móviles).
   - Organizadas por idioma en `assets/menu_nuevo/{es|en|fr}/`.
3. **Nueva Carta Digital Unificada (`menu.html`)**:
   - Creada una página web responsive para móviles que actúa como menú digital interactivo.
   - Implementado selector dinámico de idiomas (Español 🇪🇸, Inglés 🇬🇧, Francés 🇫🇷).
   - Añadida barra de navegación rápida para secciones de la carta.
   - **Simplificación y Refinamiento Estético**: Removidos los botones flotantes de acción inferior (WhatsApp, Llamada, Mapa) y el botón de descarga de PDF para lograr una vista más minimalista, elegante y enfocada.
   - **Rediseño de Cabecera Premium**: Rediseñada la barra de navegación de `menu.html` con posicionamiento absoluto para el botón de "Inicio". Esto otorga a la marca **TACOS MARRAKECH** y a sus subtítulos el ancho total central de la pantalla móvil, evitando que los textos se dividan en varias líneas y asegurando una visualización 100% limpia y lujosa.
4. **Página de Inicio (`index.html`)**:
   - Reemplazados los botones de idiomas separados por un único botón elegante "Ver Carta Digital / View Menu" que abre el menú interactivo en una pestaña nueva.
   - **Corrección de Desplazamiento (Scroll)**: Se añadió margen superior de scroll (`scroll-mt-36`) al botón de carta en la página principal para que al hacer clic desde el Hero móvil, la pantalla se detenga de forma precisa sobre el botón sin pasarse de largo hacia la sección de "Contacto y Ubicación".
   - **Nueva Sección 'Dónde Estamos' (Estilo TKO Tacos)**: Creada e insertada una sección con las 3 tiendas físicas de Palma de Mallorca. Cada una se visualiza con tarjetas que contienen imágenes en forma de arcos suntuosos (`rounded-t-full`), el nombre del barrio, dirección postal y un botón de Google Maps ("Ver en Maps") para guiarse.
   - **Navegación del Sitio**: Actualizada la barra de navegación de ordenador y el menú móvil para enlazar la nueva sección `#donde-estamos`.
5. **Redirecciones de Compatibilidad**:
   - Configurados `menu-es.html`, `menu-en.html` y `menu-fr.html` con scripts de redirección automática hacia `menu.html` con el idioma correcto preseleccionado.

## Archivos modificados
- `index.html` (Reemplazo de botones, scroll-margin, sección de locales, enlaces de menú).
- `menu-es.html` (Redirección automática a la nueva carta).
- `menu-en.html` (Redirección automática a la nueva carta).
- `menu-fr.html` (Nuevo archivo de redirección automática).
- `menu.html` (Nueva página interactiva de la carta digital y cabecera premium).
- `startup.sh` (Nuevo script para levantar entorno local).
- `assets/menu_nuevo/*` (Nuevas páginas de la carta en WebP).

## Problemas solucionados
- Optimizado el peso del menú de 9 páginas (de ~10 MB totales a menos de 2 MB en WebP) para conexiones móviles en el local.
- Resuelto el acceso multilingüe unificando la carta en un enlace que se puede usar directamente con códigos QR en las mesas.
- Simplificada la interfaz de la carta digital para que sea 100% limpia y bonita.
- Corregido el error de desplazamiento del botón Hero en la versión móvil que sobrepasaba el botón de menú.
- Corregido el diseño de la cabecera de la carta digital en móviles para evitar saltos de línea molestos.
- Corregido un cierre de etiqueta `</div>` en el separador marroquí para evitar desalineación del DOM.

## Qué queda pendiente
- Desplegar el repositorio en **Cloudflare Pages** mediante la integración de Git.
