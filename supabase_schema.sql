-- ========================================================
-- BASE DE DATOS SIMPLIFICADA EN ESPAÑOL - TACOS MARRAKECH
-- ========================================================

-- Limpiar tablas antiguas si existen
DROP TABLE IF EXISTS public.site_settings CASCADE;
DROP TABLE IF EXISTS public.hero_slides CASCADE;
DROP TABLE IF EXISTS public.about_pillars CASCADE;
DROP TABLE IF EXISTS public.locations CASCADE;
DROP TABLE IF EXISTS public.menu_items CASCADE;
DROP TABLE IF EXISTS public.menu_categories CASCADE;
DROP TABLE IF EXISTS public.reviews CASCADE;
DROP TABLE IF EXISTS public.carta_digital_pages CASCADE;
DROP TABLE IF EXISTS public.reservations CASCADE;
DROP TABLE IF EXISTS public.informacion_y_footer CASCADE;
DROP TABLE IF EXISTS public.fotos_hero CASCADE;
DROP TABLE IF EXISTS public.fotos_comida CASCADE;
DROP TABLE IF EXISTS public.carta_digital CASCADE;
DROP TABLE IF EXISTS public.locales_restaurante CASCADE;
DROP TABLE IF EXISTS public.opiniones_clientes CASCADE;
DROP TABLE IF EXISTS public.reservas CASCADE;
DROP TABLE IF EXISTS public.consentimiento_cookies CASCADE;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. INFORMACIÓN GENERAL Y REDES SOCIALES (FOOTER Y CONTACTO)
CREATE TABLE public.informacion_y_footer (
    id TEXT PRIMARY KEY DEFAULT 'principal',
    telefono TEXT DEFAULT '+34 632 02 02 09',
    whatsapp TEXT DEFAULT '34632020209',
    email TEXT DEFAULT 'tacosmarrakech4@gmail.com',
    instagram_url TEXT DEFAULT 'https://instagram.com',
    tiktok_url TEXT DEFAULT 'https://tiktok.com',
    facebook_url TEXT DEFAULT 'https://facebook.com',
    direccion_principal TEXT DEFAULT 'Palma de Mallorca, España',
    horario_general TEXT DEFAULT 'Abierto todos los días de 12:00 a 00:00'
);

INSERT INTO public.informacion_y_footer (id) VALUES ('principal') ON CONFLICT DO NOTHING;

-- 2. FOTOS Y TEXTOS DEL HERO (CARRUSEL INICIAL)
CREATE TABLE public.fotos_hero (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nombre_slide TEXT NOT NULL,
    imagen_url TEXT NOT NULL,
    titulo TEXT,
    subtitulo TEXT,
    insignia TEXT DEFAULT 'GASTRONOMÍA TRADICIONAL MARROQUÍ EN PALMA DE MALLORCA',
    orden INT DEFAULT 1,
    activa BOOLEAN DEFAULT TRUE
);

INSERT INTO public.fotos_hero (nombre_slide, imagen_url, titulo, subtitulo, orden) VALUES
('Foto Principal Local', 'assets/hero/IMG_4439.jpg', 'Tacos Marrakech', 'Especialistas en Tacos XXL estilo francés con salsa de queso casera en Palma.', 1),
('Salón y Comedor', 'assets/hero/IMG_4577.jpg', 'Ambiente Acogedor', 'Espacio climatizado en Palma de Mallorca para disfrutar en familia.', 2),
('Té Moruno Tradicional', 'assets/hero/IMG_4440.jpg', 'Té Moruno Auténtico', 'Elaborado con hierbabuena fresca según la tradición marroquí.', 3),
('Expositor y Cocina', 'assets/hero/new.jpg', 'Ingredientes 100% Frescos', 'Comida 100% Halal preparada al momento con el mejor sabor.', 4);

-- 3. FOTOS DE LA COMIDA / GALERÍA DE PLATOS
CREATE TABLE public.fotos_comida (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nombre_plato TEXT NOT NULL,
    imagen_url TEXT NOT NULL,
    categoria TEXT DEFAULT 'Tacos XXL',
    orden INT DEFAULT 1,
    activo BOOLEAN DEFAULT TRUE
);

INSERT INTO public.fotos_comida (nombre_plato, imagen_url, categoria, orden) VALUES
('Tacos XXL Gratinado', 'assets/food/08567255-92A3-41E8-9D64-4ABA88088D4A.jpg', 'Tacos XXL', 1),
('Smash Burger Halal', 'assets/food/9D02B58C-2D18-47E9-90BF-BEC15721EC21.jpg', 'Hamburguesas', 2),
('Pinchitos Marroquíes', 'assets/food/CBA90C56-B95A-44D9-AEB4-42D06B241D8F.jpg', 'Pinchitos', 3),
('Plato Combinado Especial', 'assets/food/IMG_1965.jpg', 'Platos', 4),
('Pizza Kebab Marrakech', 'assets/food/pizza_kebab.png', 'Pizzas', 5);

-- 4. PÁGINAS DE LA CARTA DIGITAL (IMÁGENES DEL MENÚ)
CREATE TABLE public.carta_digital (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    numero_pagina INT NOT NULL,
    idioma TEXT CHECK (idioma IN ('es', 'en', 'fr')) NOT NULL,
    imagen_url TEXT NOT NULL,
    titulo_pagina TEXT,
    UNIQUE(numero_pagina, idioma)
);

INSERT INTO public.carta_digital (numero_pagina, idioma, imagen_url, titulo_pagina) VALUES
(1, 'es', 'assets/menu_nuevo/es/pagina_1.webp', 'Portada Carta Digital'),
(2, 'es', 'assets/menu_nuevo/es/pagina_2.webp', 'Desayunos, Tacos, Pizza'),
(3, 'es', 'assets/menu_nuevo/es/pagina_3.webp', 'Pinchitos, Carnes, Bebidas'),
(1, 'en', 'assets/menu_nuevo/es/pagina_1.webp', 'Digital Menu Cover'),
(2, 'en', 'assets/menu_nuevo/es/pagina_2.webp', 'Breakfast, Tacos, Pizza'),
(3, 'en', 'assets/menu_nuevo/es/pagina_3.webp', 'Skewers, Meat, Drinks'),
(1, 'fr', 'assets/menu_nuevo/es/pagina_1.webp', 'Couverture Menu Digital'),
(2, 'fr', 'assets/menu_nuevo/es/pagina_2.webp', 'Petit-déjeuner, Tacos, Pizza'),
(3, 'fr', 'assets/menu_nuevo/es/pagina_3.webp', 'Brochettes, Viandes, Boissons');

-- 5. NUESTROS LOCALES EN PALMA DE MALLORCA
CREATE TABLE public.locales_restaurante (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nombre_tienda TEXT NOT NULL,
    direccion TEXT NOT NULL,
    telefono TEXT NOT NULL,
    horario TEXT DEFAULT 'Todos los días: 12:00 - 00:00',
    enlace_google_maps TEXT NOT NULL,
    imagen_escaparate TEXT,
    orden INT DEFAULT 1,
    activo BOOLEAN DEFAULT TRUE
);

INSERT INTO public.locales_restaurante (nombre_tienda, direccion, telefono, enlace_google_maps, imagen_escaparate, orden) VALUES
('Pere Garau', 'Plaza de Pere Garau, 18, Palma', '+34 632 02 02 09', 'https://maps.google.com/?q=Plaza+Pere+Garau+18+Palma', 'assets/fotos del escaparate/pere_garau.webp', 1),
('Capità Vila', 'Carrer de Capità Vila, 14, Palma', '+34 632 02 02 09', 'https://maps.google.com/?q=Capita+Vila+14+Palma', 'assets/fotos del escaparate/capita_vila.webp', 2),
('Llevant (Barceló i Combis)', 'Francesc Barceló i Combis, 4, Palma', '+34 632 02 02 09', 'https://maps.google.com/?q=Francesc+Barcelo+i+Combis+4+Palma', 'assets/fotos del escaparate/frances_barcelo.webp', 3);

-- 6. RESEÑAS Y OPINIONES DE CLIENTES
CREATE TABLE public.opiniones_clientes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nombre_cliente TEXT NOT NULL,
    estrellas INT CHECK (estrellas >= 1 AND estrellas <= 5) DEFAULT 5,
    comentario TEXT NOT NULL,
    plataforma TEXT DEFAULT 'Google Reviews',
    publicada BOOLEAN DEFAULT TRUE,
    orden INT DEFAULT 1
);

INSERT INTO public.opiniones_clientes (nombre_cliente, estrellas, comentario, plataforma, orden) VALUES
('Mohamed A.', 5, 'Los mejores Tacos XXL de toda Palma. La salsa de queso casera es increíble.', 'Google Reviews', 1),
('Laura G.', 5, 'Trato súper amable, comida recién hecha y los pinchitos marroquíes riquísimos.', 'Google Reviews', 2),
('Youssef K.', 5, 'Calidad Halal inmejorable y raciones muy generosas.', 'Google Reviews', 3);

-- 7. RESERVAS RECIBIDAS DESDE LA WEB
CREATE TABLE public.reservas (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nombre_completo TEXT NOT NULL,
    telefono TEXT NOT NULL,
    numero_personas INT NOT NULL DEFAULT 2,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    alergias TEXT,
    comentarios TEXT,
    estado TEXT CHECK (estado IN ('pendiente', 'confirmada', 'cancelada')) DEFAULT 'pendiente',
    creado_en TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 8. REGISTRO DE CONSENTIMIENTO DE COOKIES
CREATE TABLE public.consentimiento_cookies (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    eleccion TEXT CHECK (eleccion IN ('accepted', 'rejected', 'aceptada', 'rechazada')) NOT NULL,
    navegador TEXT,
    creado_en TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- PERMISOS Y SEGURIDAD RLS
ALTER TABLE public.informacion_y_footer ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.fotos_hero ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.fotos_comida ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.carta_digital ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.locales_restaurante ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.opiniones_clientes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.reservas ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.consentimiento_cookies ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Lectura publica info" ON public.informacion_y_footer FOR SELECT TO public USING (true);
CREATE POLICY "Lectura publica hero" ON public.fotos_hero FOR SELECT TO public USING (activa = true);
CREATE POLICY "Lectura publica comida" ON public.fotos_comida FOR SELECT TO public USING (activo = true);
CREATE POLICY "Lectura publica carta" ON public.carta_digital FOR SELECT TO public USING (true);
CREATE POLICY "Lectura publica locales" ON public.locales_restaurante FOR SELECT TO public USING (activo = true);
CREATE POLICY "Lectura publica opiniones" ON public.opiniones_clientes FOR SELECT TO public USING (publicada = true);
CREATE POLICY "Lectura publica reservas" ON public.reservas FOR SELECT TO public USING (true);
CREATE POLICY "Crear reservas" ON public.reservas FOR INSERT TO public WITH CHECK (true);
CREATE POLICY "Guardar consentimiento cookies" ON public.consentimiento_cookies FOR INSERT TO public WITH CHECK (true);
CREATE POLICY "Lectura consentimiento cookies" ON public.consentimiento_cookies FOR SELECT TO public USING (true);
