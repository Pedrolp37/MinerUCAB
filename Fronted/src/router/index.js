import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProyectosHomeView from '../views/Proyectos/ProyectosHomeView.vue'
import CrearProyecto from '../views/Proyectos/CrearProyectoView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/proyectos/home',
      name: 'proyectos',
      component: ProyectosHomeView
    },
    {
      path: '/proyectos/crear',
      name: 'crear_proyecto',
      component: CrearProyecto
    }
  ]
})



export default router
