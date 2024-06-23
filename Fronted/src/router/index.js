import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProyectosHomeView from '../views/Proyectos/ProyectosHomeView.vue'
import ProyectosAllView from '../views/Proyectos/ProyectosAllView.vue'
import CrearProyectoView from '../views/Proyectos/CrearProyectoView.vue'
import ProyectosDetalleView from '../views/Proyectos/ProyectosDetalleView.vue'
import ProcesosSystemView from '../views/Procesos/ProcesosSystemView.vue'
import ProcesosDetalleView from '../views/Procesos/ProcesosDetalleView.vue'

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
      path: '/proyectos/todos',
      name: 'proyectos_todos',
      component: ProyectosAllView
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
    },
    {
      path: '/procesos/home',
      name: 'procesos',
      component: ProcesosSystemView
    },
    {
      path: '/procesos/detalle/:id',
      name: 'procesos_detalle',
      component: ProcesosDetalleView
    }
  ]
})

export default router
