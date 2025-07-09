@echo off
REM Comandos rápidos para Angular y Git
REM Uso: comandos.bat [opcion]

if "%1"=="dev" (
    echo 🚀 Iniciando servidor de desarrollo...
    ng serve --open
    goto :eof
)

if "%1"=="git" (
    echo 📝 Ejecutando flujo de Git...
    git add .
    git commit -m "Curso Angular: De cero a experto - Edición 2025 - Country SPA + Cursor"
    git push -u origin main
    echo ✅ Git flow completado
    goto :eof
)

if "%1"=="build" (
    echo 🔨 Construyendo proyecto...
    ng build
    goto :eof
)

if "%1"=="test" (
    echo 🧪 Ejecutando tests...
    ng test
    goto :eof
)

if "%1"=="clean" (
    echo 🧹 Limpiando proyecto...
    rmdir /s /q dist 2>nul
    rmdir /s /q node_modules 2>nul
    npm install
    goto :eof
)

if "%1"=="cd" (
    echo 📁 Navegando al proyecto...
    cd /d C:\proyectoscursor\AngularV19CountrySPACursor
    goto :eof
)

echo Uso: comandos.bat [opcion]
echo Opciones disponibles:
echo   dev    - Iniciar servidor de desarrollo
echo   git    - Ejecutar flujo completo de Git
echo   build  - Construir proyecto
echo   test   - Ejecutar tests
echo   clean  - Limpiar y reinstalar dependencias
echo   cd     - Navegar al directorio del proyecto
