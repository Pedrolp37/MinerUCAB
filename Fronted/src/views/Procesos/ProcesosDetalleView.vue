<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 70px">
        <div class="col d-flex justify-content-start">
          <h3 style="color: #a57844">Procesos</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <router-link :to="{ name: 'procesos' }" class="backView btn">Volver</router-link>
        </div>
        <div class="col-2 d-flex justify-content-end">
          <button class="addMin btn">Agregar Etapa <i class="bi bi-plus-circle"></i></button>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 40px">
        <div class="col d-flex justify-content-start">
          <span class="mineralSpan"><i class="bi bi-boxes"></i> {{ minName }}</span>
        </div>
      </div>
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaDetalleMineralesVue :stages="getStagesMineral()" />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import { useRoute } from 'vue-router'
import NavBarVue from '../../components/NavBar.vue'
import TablaDetalleMineralesVue from '../../components/TablaDetalleMinerales.vue'
import {getEtapa} from '../../Services/Etapas/EtapaGet.servises.js'

let route = useRoute()
let minerals = ref([])
let etapas = ref([])
let minName = ref('')

onMounted(async () => {
  getEtapa(route.params.id).then((Response) => {
    etapas.value = Response.data
    console.log(etapas.value.forEach(elm => {
      console.log(elm.et_num_etapa)
    }))
  })
})



minerals.value = [
  {
    id: 1,
    name: 'Oro',
    stages: [
      {
        id: '1',
        acts: [
          {
            name: 'Extracción',
            subActs: ['Romper Roca'],
            priority: 'Alta'
          },
          {
            name: 'Envío',
            subActs: ['Llenar camión'],
            priority: 'Alta'
          }
        ]
      },
      {
        id: '2',
        acts: [
          {
            name: 'Limpiar Casa',
            subActs: ['lavar coleto', 'limpiar mesas'],
            priority: 'Alta'
          }
        ]
      }
    ]
  }
]

const getStagesMineral = () => {
  let stages = []
  minerals.value
    .filter((elm) => elm.id == route.params.id)
    .forEach((elm) => {
      minName.value = elm.name
      stages = elm.stages
    })
  return stages
}
</script>

<style scoped>
.addMin.btn {
  background-color: #fa8f14;
  color: white;
}

.addMin.btn:hover {
  background-color: #ffffff;
  color: black;
}

.backView.btn {
  background-color: #aa9985;
  color: white;
}

.backView.btn:hover {
  background-color: #ffffff;
  color: black;
}

.mineralSpan {
  background-color: #50463c;
  color: white;
  border: solid 1px black;
  border-radius: 5px;
  width: 10vw;
  height: 6vh;
  align-content: center;
  text-align: center;
}
</style>
