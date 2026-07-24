# Últimos Cambios de la Sesión

## ¿Qué se ha hecho hoy?
1. **Identidad Visual, Favicon y Metadatos OG**:
   - Actualizado el logotipo del footer en `index.html` utilizando la imagen corporativa oficial (`assets/logofotter.jpg`).
   - Configurado el **Favicon** y las etiquetas **Meta Open Graph & Twitter** en `index.html` y `menu.html` para previsualizaciones profesionales al compartir en WhatsApp y redes.
   - Limpieza de archivos obsoletos (`assets/Carta.pdf`, `assets/logo.png`, etc.).

2. **Fondo del Hero Animado (Efecto Ken Burns)**:
   - Carrusel dinámico en el Hero (`#inicio`) con 4 fotos HD del interior del restaurante y animación de zoom suave (`scale(1.1)`).
   - Insignia flotante VIP sutil en la primera diapositiva (*"Visita VIP: Moussa Goulamb"*).

3. **Sección "Sobre Nosotros" & Optimizaciones UX Móvil**:
   - Rediseño minimalista centrado en la historia y los 3 pilares del servicio.
   - Header móvil compacto y transparente (`backdrop-blur-md`).
   - Eliminados los enlaces/botones de pedir por WhatsApp para enfocar la web en el sitio corporativo.
   - Implementado el botón interactivo `.fancy` (estilo Uiverse con bordes dorados) para acceder a la Carta Digital (`menu.html`).

4. **Rediseño de Cabecera en Carta Digital (`menu.html`)**:
   - Botón inteligente **`< Atrás`** (`window.history.back()`).
   - Integración de los selectores de idioma (`ES` | `EN` | `FR`) en la barra superior unificada para maximizar la visibilidad del menú en pantallas móviles.

5. **Integración Git & Despliegue**:
   - Fusionada la rama `dev` en `main` y sincronizada en GitHub / Cloudflare Pages.

## Archivos modificados
- `index.html` (Ken Burns, metadatos OG, favicons, logo footer, botón `.fancy`, optimizaciones responsive).
- `menu.html` (Cabecera compacta unificada, botón Atrás inteligente, metadatos OG).
- `.gitignore` y `.pagesignore` (Archivos de configuración y exclusión).
- `docs/SESSION_LATEST_ES.md` (Documentación final de sesión).
- `docs/ROADMAP.md` (Roadmap actualizado).

## Problemas solucionados
- Optimizado el espacio vertical en `menu.html` en móviles.
- Navegación mejorada al volver desde la carta digital a la página principal.
- Eliminada la confusión sobre el canal de pedidos online en la web.
- Vista previa e icono de pestaña corregidos para redes sociales y navegadores.

## Qué queda pendiente
- **Backend con Supabase:** Gestión de base de datos y reservas.
- Configurar dominio personalizado en Cloudflare Pages (ej. `tacosmarrakechpalma.com`).
- Integrar analítica web (Google Analytics / Píxel de Facebook).
