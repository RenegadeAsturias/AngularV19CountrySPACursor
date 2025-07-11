import { Routes } from '@angular/router';
import { HomePageComponent } from './shared/pages/home-page/home-page';

export const routes: Routes = [
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
];
