# Aliases para Angular y Git - Cargar con: . .\aliases.ps1

# Navegación rápida al proyecto
function cd-angular { Set-Location "C:\proyectoscursor\AngularV19CountrySPACursor" }

# Comandos de Git simplificados
function git-save {
    git add .
    git commit -m "Curso Angular: De cero a experto - Edición 2025 - Country SPA + Cursor"
    git push -u origin main
}

function git-status { git status }

# Comandos de Angular simplificados
function ng-dev { ng serve --open }
function ng-build { ng build }
function ng-test { ng test }

# Limpiar y reinstalar dependencias
function clean-install {
    Remove-Item -Recurse -Force dist, node_modules -ErrorAction SilentlyContinue
    npm install
}

# Ejecutar todo el flujo de desarrollo
function dev-flow {
    Write-Host "🚀 Iniciando flujo de desarrollo..." -ForegroundColor Green
    ng serve --open
}

# Ejecutar todo el flujo de Git
function git-flow {
    Write-Host "📝 Ejecutando flujo de Git..." -ForegroundColor Blue
    git add .
    git commit -m "Curso Angular: De cero a experto - Edición 2025 - Country SPA + Cursor"
    git push -u origin main
    Write-Host "✅ Git flow completado" -ForegroundColor Green
}

Write-Host "✅ Aliases cargados. Usa 'Get-Help' para ver los comandos disponibles" -ForegroundColor Green
