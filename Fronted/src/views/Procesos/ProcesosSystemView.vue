<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 70px">
        <div class="col d-flex justify-content-start">
          <h3 style="color: #a57844">Procesos</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <button class="addMin btn">Agregar Mineral <i class="bi bi-plus-circle"></i></button>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 30px">
        <div class="col-4 d-flex flex-column justify-content-start">
          <div>
            <div class="input-group">
              <input
                type="text"
                class="input form-control"
                aria-label="Username"
                aria-describedby="basic-addon1"
                v-model="findMineral"
              />
              <button class="filtrar btn" @click="filterMineral">
                Filtrar Mineral <i class="bi bi-search"></i>
              </button>
            </div>
          </div>
          <div>
            <button
              v-show="filteredMineralsList.length != 0"
              class="filtrar btn"
              @click="showAllMinerals"
              style="margin-top: 30px"
            >
              Volver
            </button>
          </div>
        </div>
      </div>
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaMinerales
            :minerals="mineralsList"
            :filteredMinerals="filteredMineralsList"
            @showDetailMineral="getResponseSDM"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import TablaMinerales from '../../components/TablaMinerales.vue'
import NavBarVue from '../../components/NavBar.vue'
import { useRouter } from 'vue-router'

let router = useRouter()
let mineralsList = ref([])
let filteredMineralsList = ref([])
let findMineral = ref('')

mineralsList.value = [
  {
    id: 1,
    name: 'Oro',
    stages: '5',
    activities: ['Explotar', 'Explotarse']
  },
  {
    id: 2,
    name: 'plata',
    stages: '5',
    activities: ['Explotar', 'Explotarse']
  },
  {
    id: 3,
    name: 'carbon',
    stages: '5',
    activities: ['Explotar', 'Explotarse']
  },
  {
    id: 4,
    name: 'diamante',
    stages: '5',
    activities: ['Explotar', 'Explotarse']
  }
]

const filterMineral = () => {
  filteredMineralsList.value = mineralsList.value.filter((elm) => elm.name === findMineral.value)
  findMineral.value = ''
}

const showAllMinerals = () => {
  filteredMineralsList.value = []
}

const getResponseSDM = (id) => {
  router.push({ name: 'procesos_detalle', params: { id: id } })
}
</script>

<style scope>
.addMin.btn {
  background-color: #fa8f14;
  color: white;
}

.filtrar.btn {
  background-color: #999981;
  color: white;
}

.form-control {
  border: solid 1px #859a9c;
  border-radius: 10px;
}

.form-select {
  background-color: #999981;
  color: white;
  border-radius: 10px;
}

hr {
  margin: auto;
}
</style>
