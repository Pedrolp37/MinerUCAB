import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProyectosHomeView from '../views/Proyectos/ProyectosHomeView.vue'
import CrearProyectoView from '../views/Proyectos/CrearProyectoView.vue'
import ProyectosDetalleView from '../views/Proyectos/ProyectosDetalleView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      redirect: { name: 'proyectos' },
      component: HomeView
    },
    {
      path: '/proyectos/home',
      name: 'proyectos',
      component: ProyectosHomeView
    },
    {
      path: '/proyectos/detalle',
      name: 'detalle_proyecto',
      component: ProyectosDetalleView
    },
    {
      path: '/proyectos/crear',
      name: 'crear_proyecto',
      component: CrearProyectoView
    }
  ]
})

export default router
