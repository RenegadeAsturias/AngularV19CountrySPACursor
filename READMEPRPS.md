
cd AngularV19CountrySPACursor
cd C:\proyectoscursor\AngularV19CountrySPACursor

git add . 
git commit -m "Curso Angular: De cero a experto - Edición 2025 - Country SPA + Cursor" 
git push -u origin main

EJECUTAR !!!!!!!!!!!!!!!!!!!!!!!
npm run git:all

## Comandos Rápidos con NPM Scripts

### Flujo de Git simplificado:
```bash
npm run git:all      # Ejecuta: git add . + commit + push
npm run git:add      # Solo: git add .
npm run git:commit   # Solo: git commit con mensaje predefinido
npm run git:push     # Solo: git push -u origin main
```

### Desarrollo:
```bash
npm run dev          # ng serve --open (abre navegador automáticamente)
npm start            # ng serve (servidor de desarrollo)
npm run build        # ng build (construcción desarrollo)
npm run build:prod   # ng build --configuration production
npm run watch        # ng build --watch --configuration development
npm run test         # ng test (ejecutar tests)
```

### Mantenimiento:
```bash
npm run clean        # Limpia dist, node_modules y reinstala dependencias
```

### Ver todos los scripts disponibles:
```bash
npm run
```

****************************************************************** (09/07/2025)
* Clone proyecto GitHub
reneg@DESKTOP-LMA62OH MINGW64 /c/angular
$ git clone https://github.com/RenegadeAsturias/AngularV19CountrySPACursor.git

****************************************************************** (10/07/2025)
* Instalando Cursor
* 1-Me descargo desde: https://cursor.com/downloads el ejecutable para Windows
* 2-Ejecuto el ejecutable descargado
* 3-Se instala cursor
* 4-Configuro mi cuenta de github

****************************************************************** (10/07/2025)
* Configurando NPM Scripts para automatizar comandos repetitivos
* Scripts creados en package.json para Git, desarrollo y mantenimiento
* Comando principal: npm run git:all (reemplaza 3 comandos de Git)

* Parece que cuando configuro las dimensiones de las ventanas no me está funcionando bien:
* Se añaden estas tres líneas al fichero de configuración: tsconfig.json:
  "window.restoreFullScreen": false,
  "window.restoreWindows": "none",
  "window.zoomLevel": 0

* Se quedaría algo así el fichero:
.... ..... .... .... ....
  "references": [
    {
      "path": "./tsconfig.app.json"
    },
    {
      "path": "./tsconfig.spec.json"
    }
  ],
  "window": {
    "restoreFullScreen": false,
    "restoreWindows": "none",
    "zoomLevel": 0
  }
}

****************************************************************** (11/07/2025)
* Desde app creamos la siguiente estructura:
cd src/app
mkdir country
cd country
mkdir components
mkdir pages
mkdir services
mkdir interfaces
cd ..
mkdir shared
cd shared
mkdir components
mkdir pages

* Creamos el componente: home-page en scr/app/shared/pages
cd c:/proyectoscursor/AngularV19CountrySPACursor/src/app/shared/pages
ng generate component home-page --skip-tests --inline-style

* Creamos el componente: by-capital-page en scr/app/country/pages
cd c:/proyectoscursor/AngularV19CountrySPACursor/src/app/country/pages
ng generate component by-capital-page --skip-tests --inline-style

* Configuramos el app.routes
[
  {
    path: '',
    component: HomePageComponent
  },
  /** 
  {
    path: 'country'
    // Las rutas de country que no queremos que vengan aquí
  }
  */
  {
    path: '**',
    redirectTo: ''
  }
]

* Borramos todo lo que tiene el proyecto original en app.html
* y dejamos solo
<router-outlet />





