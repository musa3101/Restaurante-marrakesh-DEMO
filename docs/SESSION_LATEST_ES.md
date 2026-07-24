# Últimos Cambios de la Sesión

## ¿Qué se ha hecho hoy?
1. **Identidad Visual, Favicon y Metadatos OG**:
   - Actualizado el logotipo del footer en `index.html` utilizando la nueva imagen corporativa oficial `assets/logofotter.jpg`.
   - Configurado el **Favicon** y las etiquetas **Meta Open Graph & Twitter** en `index.html` y `menu.html` para que al compartir por WhatsApp/redes aparezca el logo oficial y la vista previa profesional.
   - Realizada limpieza total de archivos obsoletos (`assets/Carta.pdf`, `assets/logo.png`, carpeta `menu png/`).

2. **Fondo del Hero Animado (Efecto Ken Burns estilo TKO Tacos)**:
   - Implementado un carrusel dinámico en el fondo del Hero (`#inicio`) con 4 fotos de alta definición del interior del local.
   - Añadida animación progresiva de zoom in (`scale(1)` a `scale(1.1)`) con transición de opacidad suave (*cross-fade*).
   - **Foto Prioritaria de Moussa Goulamb**: Colocada la foto `assets/hero/hero.jpg` como Slide 1 con una insignia flotante VIP muy sutil indicando: *"Visita VIP: Moussa Goulamb (Nº1 Boxeo Superpluma)"*.

3. **Sección "Sobre Nosotros" Minimalista**:
   - Eliminado el carrusel de fotos secundario de esta sección para evitar recargar la página.
   - Rediseñado en un formato limpio y centrado, destacando la historia del restaurante y las 3 tarjetas de servicio (*Ingredientes Frescos*, *Recetas Auténticas*, *Ambiente Familiar*).

4. **Optimizaciones UX para Móvil & Eliminación de Pedidos Online**:
   - **Header Móvil Sleek & Transparente**: Reducido el alto del header y aplicado un fondo translúcido (`bg-neutral/30 backdrop-blur-md`) para destacar las fotos.
   - **Ajuste de Título & Subtítulo Hero**: Título ajustado a `text-3xl` en móviles. Subtítulo optimizado para SEO local: *"Los mejores French Tacos de Palma de Mallorca · Junto a Plaza de las Columnas"*.
   - **Eliminados Botones de "Pedir Online"**: Removidos todos los enlaces de pedidos por WhatsApp en la web por tratarse de un sitio corporativo.
   - **Botón "Ver Carta Digital" Directo**: En su lugar se colocó el botón directo que abre `menu.html` en una pestaña nueva.
   - **Integración de Componente Botón Uiverse (`.fancy`)**: Implementado el estilo de botón interactivo `.fancy` (con trazos elegantes dorados y animaciones hover) para los botones de la carta.

5. **Rediseño de Cabecera en Carta Digital (`menu.html`)**:
   - **Navegación Inteligente**: Reemplazado el enlace `< INICIO` por el botón inteligente **`< Atrás`** (`window.history.back()`).
   - **Ahorro de Espacio Vertical**: Integradas las píldoras de idioma (`ES` | `EN` | `FR`) dentro de la propia barra superior junto al nombre de la marca, eliminando la segunda barra de 56px y dando prioridad máxima a las imágenes de la carta en móviles.

6. **Merge y Despliegue en GitHub / Cloudflare Pages**:
   - Fusionada la rama `dev` en la rama principal `main` y subida a GitHub (`git push origin main`), habilitando el despliegue automático en Cloudflare Pages.

## Archivos modificados
- `index.html` (Nuevas animaciones Ken Burns, botón `.fancy`, header transparente, SEO subtítulo, limpieza de botones de pedir online).
- `menu.html` (Rediseño de cabecera compacta, botón Atrás inteligente, píldoras de idioma integradas).
- `.gitignore` (Ignorado archivo de vídeo `.MP4`).
- `docs/ROADMAP.md` (Actualizado con hitos completados).
- `docs/SESSION_LATEST_ES.md` (Este reporte final de sesión).

## Problemas solucionados
- Corregido el exceso de espacio vertical en `menu.html` permitiendo ver las fotos de la carta desde el primer momento.
- Corregida la navegación del botón de volver en la carta para regresar a la sección previa y no al inicio.
- Eliminada la confusión de pedidos online sustituyéndolos por el acceso directo a la carta digital.
- Optimizado el diseño del Hero en móviles para priorizar las imágenes reales del local.

## Qué queda pendiente
- **Backend en Supabase:** Implementar base de datos para la gestión de reservas en la siguiente sesión.
- Configurar dominio personalizado en Cloudflare (ej. `tacosmarrakechpalma.com`).
- Integrar el píxel de Facebook o herramientas de analítica web.

