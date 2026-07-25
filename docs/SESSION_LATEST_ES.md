# Últimos Cambios de la Sesión

## ¿Qué se ha hecho hoy?
1. **Cambio de Subdominio en Cloudflare Pages**:
   - Eliminado el antiguo proyecto `restaurante-marrakesh-demo`.
   - Creado y configurado el nuevo proyecto **`tacosmarrakech`** conectado al repositorio de GitHub.
   - La web ahora está activa y desplegándose en su nuevo subdominio definitivo: **`tacosmarrakech.pages.dev`**, coincidiendo exactamente con los flyers físicos impresos por el cliente.

2. **Reubicación de CTAs de Reserva**:
   - Revertido el Hero principal para mostrar únicamente el botón de **"VER CARTA DIGITAL"** (diseño limpio original).
   - Reemplazada la tarjeta de WhatsApp ("Escríbenos por WhatsApp") en la sección de contacto por el botón **"Reservar Mesa"** con icono temático (`table_restaurant`) y color ámbar unificado.

3. **Auditoría y QA General de Código**:
   - Resuelto el `SyntaxError` de GSAP en `index.html` cerrando correctamente su bucle.
   - Limpiado el HTML eliminando etiquetas duplicadas de `</body>` y `</html>`.
   - Corregida la sintaxis de la media-query CSS (`max-width` en lugar de `max-w`) para la transparencia del header al hacer scroll en móvil.
   - Optimizada la visibilidad en móviles del distintivo "Visita VIP" a dos líneas y con mayor separación.
   - Añadido margen al preloader para dar aire a las letras dinámicas.
   - Eliminada la función duplicada `handleBack` en `menu.html` para asegurar un retorno limpio a `index.html#menu`.

## Archivos modificados
- `index.html` (Cambios de CTAs, correcciones estructurales, media-query y VIP badge).
- `menu.html` (Corrección de redundancia en script JS).
- `assets/js/supabase-client.js` (Cambio a credenciales de producción del proyecto `feikeytbrxtsooaxsvjt` y resolución de conflicto de alcance local con `supabaseClient`).

## Qué queda pendiente
- Configuración del dominio personalizado adicional (si el cliente adquiere un dominio propio fuera de pages.dev).
