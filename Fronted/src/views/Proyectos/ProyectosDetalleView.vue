<template>
  <div>
    <NavBarVue :proyectos="proyectos" />
    <hr class="sNavMenu" />
    <div class="d-flex flex-row">
      <MenuOptProVue />
      <EtapasActividadesVue />
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import MenuOptProVue from '../../components/MenuOptPro.vue'
import EtapasActividadesVue from '../../components/NavEActividades.vue'
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

<style scoped>
.sNavMenu {
  margin: 0px;
  border-top: solid 1px #fa8f14;
}
.pCrearP {
  font-size: 12px;
  font-weight: bold;
}
</style>
