import { createRouter, createWebHistory } from 'vue-router'
import prueba from '../views/Proyectos/HomeProyectos.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: prueba
    }
  ]
})

export default router
