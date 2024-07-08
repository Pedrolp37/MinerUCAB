<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-start">
          <h3 class="title">Proyectos</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <div>
            <router-link :to="{ name: 'proyectos' }" class="backView btn">Volver</router-link>
          </div>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 40px">
        <div class="col-3">
          <div>
            <select class="form-select" aria-label="Default select example" v-model="statusOption">
              <option selected>Seleccionar Estatus:</option>
              <option value="Pendiente">Pendiente</option>
              <option value="Proceso">Proceso</option>
              <option value="Terminado">Terminado</option>
              <option value="Atrasado">Atrasado</option>
            </select>
          </div>
          <div>
            <button class="filtrar btn" @click="getProFiltered">Filtrar</button>
            <button v-if="proFiltered.length != 0" class="back btn" @click="showAllPro">
              volver
            </button>
          </div>
        </div>
      </div>
      <div class="row" style="margin: 80px">
        <div>
          <TablaProyectos
          :proyectos="proyectos"
          :proFiltered="proFiltered"
          @dltPro="deleteProyectoSelected"
          @mDPro="modifyProyecto"
        />
        </div>
        <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagPro" @nextPag="nextPagPro" />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import { useRouter } from 'vue-router'
import NavBarVue from '../../components/NavBar.vue'
import TablaProyectos from '../../components/TablaProyectos.vue'
import Pagination from '../../components/Pagination.vue'
import {getAllProyectos} from '../../Services/Proyectos/GetAllProyectos.services.js'
import {putMineral} from '../../Services/Proyectos/PutProyecto.services.js'
import {deleteProyecto} from '../../Services/Proyectos/DeleteProyecto.services.js'

/*
 
 * VARIABLES

 */
const router = useRouter()
let statusOption = ref('Seleccionar Estatus:')
let proyectos = ref([])
let proFiltered = ref([])
let changePageProyectos = ref(0)



/*
 
 * CONSUMO DE LA API

 */

onMounted(async () => {
  getAllProyectos(changePageProyectos.value).then((Response) => (proyectos.value = Response.data))
})

/*

* METHODS

*/

const nextPagPro = () => {
  if (proyectos.value.length == 5) {
    changePageProyectos.value += 5
    getNewPagePro()
  }
}

const backPagPro  = () => {
  if (changePageProyectos.value >= 5) {
    changePageProyectos.value -= 5
    getNewPagePro()
  }
}

const getNewPagePro  = async () => {
  getAllProyectos(changePageProyectos.value).then((Response) => (proyectos.value = Response.data))
}







const getProFiltered = () => {
  switch (statusOption.value) {
    case 'Pendiente':
      proFiltered.value = proyectos.value.filter((elm) => elm.estatus == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
    case 'Proceso':
      proFiltered.value = proyectos.value.filter((elm) => elm.estatus == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
    case 'Terminado':
      proFiltered.value = proyectos.value.filter((elm) => elm.estatus == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
    case 'Atrasado':
      proFiltered.value = proyectos.value.filter((elm) => elm.estatus == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
  }
}

const deleteProyectoSelected = (id) => {
  deleteProyecto(id)
  router.go()
}

const modifyProyecto = (infProyecto) => {
  putMineral({
    proyecto_id : infProyecto.id, 
    estatusP : infProyecto.estatus
  })

  router.go()
}

const showAllPro = () => {
  proFiltered.value = []
}
</script>

<style scoped>
.backView.btn {
  background-color: #aa9985;
  color: white;
}
.title {
  color: #a57844;
}

.form-select {
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
}

.filtrar.btn {
  margin-top: 10px;
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
}

.filtrar.btn:hover {
  background-color: #a07e4c00;
  color: black;
}

.back.btn {
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
  margin-top: 10px;
  margin-left: 20px;
}

.back.btn:hover {
  background-color: #a07e4c00;
  color: black;
}
</style>
