import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProyectosHomeView from '../views/Proyectos/ProyectosHomeView.vue'
import ProyectosAllView from '../views/Proyectos/ProyectosAllView.vue'
import CrearProyectoView from '../views/Proyectos/CrearProyectoView.vue'
import ProyectosDetalleView from '../views/Proyectos/ProyectosDetalleView.vue'
import ProcesosSystemView from '../views/Procesos/ProcesosSystemView.vue'
import ProcesosDetalleView from '../views/Procesos/ProcesosDetalleView.vue'
import EmpleadosHomeView from '../views/Empleados/EmpleadosHomeView.vue'
import AliadosHomeView from '../views/Aliados/AliadosHomeView.vue'
import ClientesHomeView from '../views/Clientes/ClientesHomeView.vue'
import InventarioHomeView from '../views/Inventario/InventarioHome.vue'

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
      path: '/proyectos/detalle/:id',
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
    },
    {
      path: '/empleados/home',
      name: 'empleados',
      component: EmpleadosHomeView
    },
    {
      path: '/aliados/home',
      name: 'aliados',
      component: AliadosHomeView
    },
    {
      path: '/clientes/home',
      name: 'clientes',
      component: ClientesHomeView
    },
    {
      path: '/inventario/home',
      name: 'inventario',
      component: InventarioHomeView
    }
  ]
})

export default router
