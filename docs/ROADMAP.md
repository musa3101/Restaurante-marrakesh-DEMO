# Roadmap del Proyecto - Tacos Marrakech

## Tareas Completadas
- [x] Configuración de nuevo subdominio definitivo en Cloudflare Pages (`tacosmarrakech.pages.dev`) para coincidir con los flyers impresos.
- [x] Conexión e integración de credenciales activas de Supabase en producción para reservas y cookies.
- [x] Reubicación de CTAs: Reversión del Hero a solo "Ver Carta" y conversión del CTA de WhatsApp en contacto a "Reservar Mesa".
- [x] Corrección de asignación de imágenes de escaparates (Pere Garau vs Francesc Barceló i Combis).
- [x] Actualización SEO de marca a "Gastronomía Tradicional Marroquí en Palma de Mallorca" en títulos y redes sociales.
- [x] Configuración y verificación de sistema híbrido de Cookies (localStorage + Supabase audit table).
- [x] Optimización de animación Preloader Marroquí.
- [x] Rediseño del Footer (remplazada la columna repetida por columna de Navegación Rápida).
- [x] Integración del script de analítica **Microsoft Clarity** (`xrkh712a2y`).
- [x] Implementación del carrusel **Swiper Coverflow 3D** en "Nuestro Menú".
- [x] Conversión y optimización de las páginas del menú original a formato WebP.
- [x] Creación de la Carta Digital interactiva unificada en `menu.html` con selector de idiomas (ES, EN, FR) y botón Atrás inteligente.
- [x] Configuración de redirecciones automáticas en las rutas antiguas (`menu-es.html`/`menu-en.html`/`menu-fr.html`).
- [x] Sección "Dónde Estamos" con las 3 tiendas en Palma.
- [x] Despliegue en producción en Cloudflare Pages.
- [x] **Desarrollo e Implementación de la web para Smart TV (`/tv/`):**
  - [x] Creación del bucle infinito de diapositivas automatizado.
  - [x] Integración del código QR oficial de alta resolución.
  - [x] Ocultación de cursor de ratón por defecto en Smart TV.
  - [x] Corrección de tamaño de logos sociales.
- [x] Configuración de redirección 301 en Cloudflare para mantener la compatibilidad de los códigos QR físicos ya impresos.
- [x] **Arquitectura Dúo Completada para Pere Garau (Landing + URL Carta QR Independiente):**
  - [x] Landing page del local en `peregarau/index.html` 100% responsive (móvil, tablet y PC).
  - [x] Título y Botón ubicados en la parte inferior sobre la foto **SIN caja de fondo**, logrando la máxima visibilidad en fotos reales.
  - [x] Carrusel Swiper cinematográfico con 5s por foto, fundido lento de 2.2s y zoom Ken Burns.
  - [x] Preloader personalizado de 3.5s con letras tricolor (rojo, dorado, verde esmeralda) y distintivo `PERE GARAU • PALMA`.
  - [x] Menú desplegable hamburguesa idéntico a la web principal (tipografía Cinzel, separador estrella verde/rojo y bloqueo de scroll).
  - [x] Botón oficial de TikTok enlazando a `https://vm.tiktok.com/ZN8eSq29A/`.
  - [x] Teléfono de contacto y enlace WhatsApp actualizados al número del dueño (+34 632 69 21 91).
  - [x] Carta digital dedicada e independiente en `peregarau/menu.html` para código QR.
  - [x] Código consolidado y fusionado a la rama `main`.

## Tareas en Progreso
- [ ] Ninguna (Fase completada).

## Próximas Mejoras Prioritarias
- [ ] Generar e imprimir pegatinas de código QR apuntando a `https://tacosmarrakech.pages.dev/peregarau/menu.html`.
- [ ] Configurar dominio personalizado en Cloudflare Pages (si el cliente lo requiere más adelante).
