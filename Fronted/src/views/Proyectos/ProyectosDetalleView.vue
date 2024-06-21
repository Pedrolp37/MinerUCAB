<template>
  <div>
    <NavBarVue :proyectos="proyectos" />
    <hr class="sNavMenu" />
    <div class="d-flex flex-row">
      <MenuOptProVue @changeView="changeView" />

      <!-- Estas son las vistas que van a cambiar según lo que emita 
      el menú de opciones al detalle del proyecto, esto lo
      haré con el v-show -->
      <EtapasActividadesVue v-show="optionSelect == 'etapas'" @getActivity="getActivity" />
      <ActividadDetalleVue
        v-show="optionSelect == 'detalleActividad'"
        :activity="activitySelect"
        @closeDAct="changeView"
      />
      <EmpleadosProView v-show="optionSelect == 'empleados'" />
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import MenuOptProVue from '../../components/MenuOptPro.vue'
import EtapasActividadesVue from '../../components/NavEActividades.vue'
import ActividadDetalleVue from '../../components/ActividadDetalle.vue'
import EmpleadosProView from './EmpleadosProView.vue'
import NavBarVue from '../../components/NavBar.vue'

//varibles
let proyectos = ref([])
let optionSelect = ref('')
let activitySelect = ref({})

optionSelect.value = 'etapas'
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

//methods

const getActivity = (elm) => {
  activitySelect.value = {
    id: elm.id,
    title: elm.title,
    culmination: elm.culmination,
    description: elm.description,
    employees: elm.employees,
    priority: elm.priority
  }
  optionSelect.value = 'detalleActividad'
}

const changeView = (option) => {
  // esta función tiene como finalidad cambiar la vista que se va a visualizar
  // según lo que emita el menú de opciones
  optionSelect.value = option
}
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
