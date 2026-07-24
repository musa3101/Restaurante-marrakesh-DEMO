/**
 * Integración Client-Side Simplificada en Español con Supabase para Tacos Marrakech
 */

const SUPABASE_URL = 'https://xraatkirsryjgnmevyxb.supabase.co';
const SUPABASE_ANON_KEY = window.SUPABASE_ANON_KEY || 'sb_publishable_xBhbZsOlrLqNI5PzIma48Q_-SXx5QXT';

let supabase = null;

if (window.supabase) {
  supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
}

// === CARGA DE CONTENIDOS DINÁMICOS DESDE TABLAS EN ESPAÑOL ===
document.addEventListener('DOMContentLoaded', async () => {
  if (!supabase) return;

  try {
    await Promise.all([
      cargarInformacionYFooter(),
      cargarFotosHero(),
      cargarLocales(),
      cargarOpiniones(),
      cargarCartaDigital()
    ]);
  } catch (err) {
    console.warn('Carga dinámica con fallback estático activo:', err);
  }
});

// 1. Cargar Información General (Teléfono, Redes Social, Footer)
async function cargarInformacionYFooter() {
  const { data, error } = await supabase.from('informacion_y_footer').select('*').eq('id', 'principal').single();
  if (error || !data) return;

  if (data.telefono) {
    document.querySelectorAll('.app-phone-text').forEach(el => el.textContent = data.telefono);
  }
  if (data.whatsapp) {
    window.APP_WHATSAPP_NUMBER = data.whatsapp;
  }
}

// 2. Cargar Fotos del Hero Slider
async function cargarFotosHero() {
  const { data, error } = await supabase
    .from('fotos_hero')
    .select('*')
    .eq('activa', true)
    .order('orden', { ascending: true });

  if (error || !data || data.length === 0) return;

  const sliderContainer = document.getElementById('hero-slider');
  if (!sliderContainer) return;

  sliderContainer.innerHTML = data.map((slide, index) => `
    <div class="hero-slide absolute inset-0 ${index === 0 ? 'active' : ''}">
      <img src="${slide.imagen_url}" alt="${slide.nombre_slide}" class="w-full h-full object-cover" />
      <div class="absolute inset-0 bg-gradient-to-t from-neutral via-neutral/60 to-transparent"></div>
    </div>
  `).join('');
}

// 3. Cargar Nuestros Locales
async function cargarLocales() {
  const { data, error } = await supabase
    .from('locales_restaurante')
    .select('*')
    .eq('activo', true)
    .order('orden', { ascending: true });

  if (error || !data || data.length === 0) return;

  const container = document.getElementById('locations-container');
  if (!container) return;

  container.innerHTML = data.map(loc => `
    <div class="bg-neutral-light border border-white/10 rounded-2xl p-6 flex flex-col justify-between hover:border-tertiary/50 transition-all">
      <div>
        <h3 class="font-headline font-bold text-xl text-gold-gradient mb-2">${loc.nombre_tienda}</h3>
        <p class="text-white/70 text-sm mb-3 flex items-start gap-2">
          <span class="material-symbols-outlined text-primary text-base shrink-0 mt-0.5">location_on</span>
          ${loc.direccion}
        </p>
        <p class="text-white/60 text-xs mb-4 flex items-center gap-2">
          <span class="material-symbols-outlined text-tertiary text-base shrink-0">schedule</span>
          ${loc.horario}
        </p>
      </div>
      <div class="flex items-center gap-3 mt-4 pt-4 border-t border-white/5">
        <a href="tel:${loc.telefono.replace(/\s+/g, '')}" class="flex-1 bg-white/5 hover:bg-white/10 text-white font-label text-xs font-bold py-2.5 px-3 rounded-xl border border-white/10 flex items-center justify-center gap-1.5 transition-all">
          <span class="material-symbols-outlined text-sm text-primary">call</span>
          Llamar
        </a>
        <a href="${loc.enlace_google_maps}" target="_blank" rel="noopener noreferrer" class="flex-1 bg-tertiary/20 hover:bg-tertiary/30 text-tertiary font-label text-xs font-bold py-2.5 px-3 rounded-xl border border-tertiary/30 flex items-center justify-center gap-1.5 transition-all">
          <span class="material-symbols-outlined text-sm">map</span>
          Ubicación
        </a>
      </div>
    </div>
  `).join('');
}

// 4. Cargar Opiniones de Clientes
async function cargarOpiniones() {
  const { data, error } = await supabase
    .from('opiniones_clientes')
    .select('*')
    .eq('publicada', true)
    .order('orden', { ascending: true });

  if (error || !data || data.length === 0) return;

  const reviewsContainer = document.getElementById('reviews-container');
  if (!reviewsContainer) return;

  reviewsContainer.innerHTML = data.map(rev => `
    <div class="review-card flex-shrink-0 w-full sm:w-[350px] bg-neutral-light/90 border border-white/10 rounded-2xl p-6 flex flex-col justify-between">
      <div>
        <div class="flex items-center gap-1 text-tertiary mb-3">
          ${'★'.repeat(rev.estrellas)}${'☆'.repeat(5 - rev.estrellas)}
        </div>
        <p class="text-white/80 text-sm italic mb-4">"${rev.comentario}"</p>
      </div>
      <div class="flex items-center justify-between border-t border-white/5 pt-3">
        <span class="font-headline font-bold text-white text-sm">${rev.nombre_cliente}</span>
        <span class="text-[10px] font-label text-tertiary bg-tertiary/10 px-2 py-0.5 rounded-full border border-tertiary/20">${rev.plataforma}</span>
      </div>
    </div>
  `).join('');
}

// 5. Cargar Páginas de la Carta Digital (menu.html)
async function cargarCartaDigital() {
  const currentLang = window.currentLanguage || 'es';
  const img1 = document.getElementById('img-menu-1');
  const img2 = document.getElementById('img-menu-2');
  const img3 = document.getElementById('img-menu-3');

  if (!img1 || !img2 || !img3) return;

  const { data, error } = await supabase
    .from('carta_digital')
    .select('*')
    .eq('idioma', currentLang);

  if (error || !data || data.length === 0) return;

  data.forEach(page => {
    if (page.numero_pagina === 1 && img1) img1.src = page.imagen_url;
    if (page.numero_pagina === 2 && img2) img2.src = page.imagen_url;
    if (page.numero_pagina === 3 && img3) img3.src = page.imagen_url;
  });
}

// === ENVÍO DE RESERVAS A LA TABLA 'reservas' EN SUPABASE ===
async function submitReservationToSupabase(reservationData) {
  if (supabase) {
    try {
      const { error } = await supabase.from('reservas').insert([{
        nombre_completo: reservationData.name,
        telefono: reservationData.phone || '',
        numero_personas: parseInt(reservationData.people) || 2,
        fecha: reservationData.date,
        hora: reservationData.time,
        alergias: reservationData.allergies || null,
        comentarios: reservationData.notes || null,
        estado: 'pendiente'
      }]);
      if (error) console.error('Error al guardar reserva:', error);
      else console.log('✅ Reserva guardada en la tabla reservas de Supabase.');
    } catch (e) {
      console.warn('Excepción guardando reserva:', e);
    }
  }
}

// === REGISTRO DE CONSENTIMIENTO DE COOKIES EN SUPABASE ===
async function registrarConsentimientoCookie(choice) {
  if (supabase) {
    try {
      const { error } = await supabase.from('consentimiento_cookies').insert([{
        eleccion: choice,
        navegador: navigator.userAgent || 'Desconocido'
      }]);
      if (error) console.error('Error al guardar consentimiento de cookies:', error);
      else console.log('✅ Consentimiento de cookies registrado en Supabase.');
    } catch (e) {
      console.warn('Excepción guardando consentimiento de cookies:', e);
    }
  }
}

window.submitReservationToSupabase = submitReservationToSupabase;
window.registrarConsentimientoCookie = registrarConsentimientoCookie;
