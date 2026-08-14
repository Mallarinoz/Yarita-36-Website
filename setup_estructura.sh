#!/bin/sh

# ==========================================
# Script de Inicialización de Proyecto Modular
# ==========================================

# --- CONFIGURACIÓN ---
# Si quieres cambiar el nombre del proyecto, hazlo aquí:
PROJECT_NAME="tarjeta-YARI-cumple-36"

echo "🚀 Iniciando la creación de la estructura para: $PROJECT_NAME..."

# Crea la carpeta principal si no existe y entra en ella
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# --- 1. ARCHIVOS RAÍZ ---
echo "📄 Creando archivos raíz..."
touch index.html
touch README.md

# --- 2. ACTIVOS (Assets) ---
echo "📂 Creando carpetas de Activos..."
mkdir -p assets/images assets/icons assets/fonts

# --- 3. ESTILOS (CSS) ---
echo "🎨 Creando estructura de Estilos..."
mkdir -p css/modules
touch css/style.css
touch css/variables.css
touch css/base.css
touch css/modules/header.css
touch css/modules/footer.css
touch css/modules/hero.css

# Pre-rellenar style.css con los imports básicos
echo "/* css/style.css */

/* 1. Importar Variables y Base */
@import 'variables.css';
@import 'base.css';

/* 2. Importar Módulos específicos */
@import 'modules/header.css';
@import 'modules/hero.css';
@import 'modules/footer.css';" > css/style.css

# --- 4. COMPORTAMIENTO (JS) ---
echo "⚡ Creando estructura de JavaScript..."
mkdir -p js/modules
touch js/main.js
touch js/utils.js
touch js/modules/menu.js
touch js/modules/slider.js

# --- 5. CONFIGURACIÓN VS CODE (NixOS friendly) ---
echo "⚙️ Creando jsconfig.json para VS Code..."
echo '{
    "compilerOptions": {
        "module": "es6",
        "target": "es6"
    },
    "exclude": ["node_modules"]
}' > jsconfig.json

echo "=========================================="
echo "✅ Estructura creada con éxito dentro de la carpeta: $PROJECT_NAME"
echo "👉 Para empezar en VS Code, ejecuta en la terminal:"
echo "   cd $PROJECT_NAME && code ."
echo "=========================================="