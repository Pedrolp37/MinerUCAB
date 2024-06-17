<template>
  <div>
    <NavBarVue :proyectos="proyectos" />
  </div>
</template>

<script setup>
import { ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'

let proyectos = ref([])
proyectos = [
  {
    name: '% Andrómeda',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  },

  {
    name: '% Lactea',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  },

  {
    name: '% Gemini',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  }
]
</script>

<style scoped></style>
