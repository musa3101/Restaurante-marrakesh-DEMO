#!/bin/bash
# ==========================================
# TACOS MARRAKECH - AUTOMATIZACIÓN DE ENTORNO LOCAL
# ==========================================
echo "🚀 Iniciando el entorno de desarrollo local..."

# 1. Cambiar a rama de desarrollo para evitar despliegues accidentales en la rama principal
echo "🌿 Cambiando a la rama de desarrollo (dev)..."
git checkout dev 2>/dev/null || git checkout -b dev

# 2. Levantar el servidor local con enrutamiento limpio en el puerto 3000
echo "🔥 Levantando servidor en http://localhost:3000..."
python3 server.py

