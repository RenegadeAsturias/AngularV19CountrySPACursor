import { Routes } from '@angular/router';
import { HomePageComponent } from './shared/pages/home-page/home-page';

export const routes: Routes = [
  {
    path: '',
    component: HomePageComponent
  },
  {
    path: 'country',
    // loadChildren: () => import('./country/country.routes').then(m => m.countryRoutes)
    // añadimos: 'export default countryRoutes - para no tener que recorrer los countries
    loadChildren: () => import('./country/country.routes')
  },
  {
    path: '**',
    redirectTo: ''
  }
];
