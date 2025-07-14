
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
mkdir layouts
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

****************************************************************** (12/07/2025)
* Vamos a separar las rutas para que no estén todas
* en el mismo fichero: src/app/app.routes.ts
* Asi que vamos a crear un fichero en particular para las rutas
* del módulo de countries: scr/app/country/country.routes.ts

// Cargamos las rutas de country
// Esta era la opción por defecto, utilizando lazy loading, pero se ve veo así:
// loadChildren: () => import('./country/country.routes').then(m => m.countryRoutes)

// Cargamos las rutas de country
// Pero esta vez, vamos a utilizar Lazy loading también pero en lugar de recorrelos
// Utilizaremos las siguiente forma, en nuestro: country.routes.ts 
// añadimos: export default countryRoutes; 
// para exportar la clase por defecto y así no hace falta recorrer las rutas y se queda:
// loadChildren: () => import('./country/country.routes')

loadChildren: () => import('./country/country.routes')

****************************************************************** (13/07/2025)
* 108. Layout Componets
* Vamos a crear una carpeta nueva en: src/app/country/layouts
* Los layouts son:
* Un layout no es más que otro componente común y corriente
* que usualmente es utilizado para dar un estilo a todas las páginas hijas.
* Los layouts serán componentes que lucen como páginas pero envuelven otras pantallas,
* que básicamente es un componente que tiene un 'router-outlet' interno.

* 1º-Creamos el componente: CountryLayout en scr/app/country/layout
cd c:/proyectoscursor/AngularV19CountrySPACursor/src/app/country/layouts
ng generate component CountryLayout --skip-tests --inline-style

* 2º-En la clase Importamos el RouterOutlet
@Component({
  selector: 'app-country-layout',
  imports: [RouterOutlet],  <<<<<<<<<<<<<<<---Importamos RouterOutlet
  templateUrl: './country-layout.html',
})
export class CountryLayout {

* 3º-En la plantilla añadimos el <router-outlet>
p>country-layout works!</p>
<router-outlet/> <<<<<<<<<<<<<<<---Utilizamos RouterOutlet

* De esta forma vamos a poder mostrar rutas hijas!

****************************************************************** (14/07/2025)
* 4º Ahora en la clase country.routers.ts
* construímos las páginas hijas de nuestros componentes de countries

* Seguimos contruyendo la aplicación y vamos a uno de los recursos que nos ha dejado
* https://daisyui.com/components/hero/
* Y copiamos el html de la sección: Hero with overlay image
* que nos servirá de landingPage y lo copiamos en la home-page.hmtl

* Desde el botón empezar de la landingPage vamos a crear un enlace
* desde el html de la home-page.component.html
* 1º-En la clase: home-page.component.ts
* importamos el RouterLink

@Component({
  selector: 'app-home-page',
  imports: [RouterLink], <<<<<<<<<<<<----Importamos RouterLink
  templateUrl: './home-page.html',
})
export class HomePageComponent {

* 2º-En la platilla: home-page.component.hmtl
* Construímos un enlace para navegar a la sección country:
<button routerLink="/country" class="btn btn-primary">Empezar</button>
















******************************************************************

// npm run git:all


