<template>
  <div>
    <NavBarVue />
    <hr class="sNavMenu" />
    <div class="d-flex flex-row">
      <MenuOptProVue @changeView="changeView" />
      <EtapasActividadesVue v-show="optionSelect == 'etapas'" @getActivity="getActivity" />
      <ActividadDetalleVue
        v-show="optionSelect == 'detalleActividad'"
        :activity="activitySelect"
        @closeDAct="changeView"
      />
      <EmpleadosProView v-show="optionSelect == 'empleados'" :empAsigPro="empAsigPro" />
      <ClienteProViewVue v-show="optionSelect == 'cliente'" />
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
import ClienteProViewVue from './ClienteProView.vue'

//varibles
let proyectos = ref([])
let optionSelect = ref('')
let activitySelect = ref({})
let empAsigPro = ref([])

empAsigPro.value = [
  {
    name: 'Arturo',
    lastName: 'perez',
    dni: '28680741',
    job: 'Programador',
    activity: ['Diseñar Juegos']
  },
  {
    name: 'Angel',
    lastName: 'perez',
    dni: '28680742',
    job: 'Programador',
    activity: ['MinerUcab']
  },
  {
    name: 'Wilmer',
    lastName: 'perez',
    dni: '25420700',
    job: 'Programador',
    activity: ['Ucab']
  }
]

optionSelect.value = 'etapas'

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
