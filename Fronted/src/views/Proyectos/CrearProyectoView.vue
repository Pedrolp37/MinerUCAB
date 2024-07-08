<template>
  <div>
    <NavBarVue />
    <section style="margin-top: 70px">
      <div class="container">
        <div class="row">
          <div class="col-6 d-flex justify-content-start">
            <h3 style="color: #a57844">Creación de Proyectos</h3>
          </div>
          <div class="col-6 d-flex justify-content-end">
            <router-link :to="{ name: 'proyectos' }" class="btn" style="color: #fa8f14"
              >Regresar ( proyectos en curso )</router-link
            >
          </div>
        </div>
        <div class="row" style="margin-top: 30px">
          <div class="col-5">
            <div class="">
              <input type="text"
                    class="nproyecto form-control"
                    id="nombre"
                    v-model="nombreProyecto"
                    :placeholder="'Ingresar Nombre Proyecto'"
                    autocomplete="off">
            </div>
          </div>
        </div>
        <div class="row" style="margin-top: 30px">
          <div class="col-5">
            <div class="">
              <input type="text"
                    class="nproyecto form-control"
                    id="nombre"
                    v-model="descripcionPro"
                    :placeholder="'Ingresar Descripción Proyecto'"
                    autocomplete="off">
            </div>
          </div>
        </div>
        <div class="row d-flex justify-content-start" style="margin-top: 40px">
          <div
            class="pCrearP col-2"
            :style="{ color: componentName == 'solicitudes_clientes' ? '#fa8f14' : 'black' }"
          >
            <p class="pCrearP">Solicitudes Clientes</p>
          </div>

          <div class="pCrearP col-2">
            <p class="pCrearP" :style="{ color: componentName == 'pozos_disponible' ? '#fa8f14' : 'black' }">
              Pozos Disponibles
            </p>
          </div>
        </div>
        <hr />
      </div>
    </section>


    <section>
      <div v-if="componentName == 'solicitudes_clientes'" class="container" style="margin-top: 30px">
        <div class="row">
          <div class="col d-flex justify-content-center">
            <h2 style="color: #a57844; margin-left: 30px">Solicitudes Cliente</h2>
          </div>
        </div>
        <div class="row" style="margin-top: 30px">
          <div class="col">
            <div class="d-flex justify-content-center">
              <TablaSCliente :soliCliente="solicitudesCli" :isCProyecto="true" @getIdSoliCliente="getIdSoliCliente"/>
            </div>
            <div class="d-flex justify-content-center">
              <Pagination @backPag="backPagSCliente" @nextPag="nextPagSCliente" />
            </div>
          </div>
        </div>
      </div>

      <div v-if="componentName == 'pozos_disponible'" class="container" style="margin-top: 30px">
        <div class="row">
          <div class="col d-flex justify-content-center">
            <h2 style="color: #a57844; margin-left: 30px">Pozos Disponibles</h2>
          </div>
        </div>
        <div class="row" style="margin-top: 30px">
          <div class="col">
            <div class="d-flex justify-content-center">
             <TablaPozoDis :pozosDisponibles="pozosDisponibles" @getIdPozo="getPozoID"/>
            </div>
            <div class="d-flex justify-content-center">
              <Pagination @backPag="backPagSCliente" @nextPag="nextPagSCliente" />
            </div>
          </div>
        </div>
      </div>

    </section>


    <section>
      <div class="d-flex flex-row justify-content-end" style="margin: 20px">
        <button
          v-show="
            componentName == 'pozos_disponible'
          "
          @click="handleClickBack"
          class="bP btn"
          style="margin-right: 20px; background-color: #a57844; color: white"
        >
          Volver
        </button>

        <button
          v-show="
            componentName == 'solicitudes_clientes' &&
            soliClienteSelected != 0
          "
          @click="handleClickNext"
          class="bp btn"
          role="button"
          style="margin-right: 20px; background-color: #fa8f14; color: white"
        >
          Continuar
        </button>

        <button
          v-show="soliClienteSelected != 0 && minSoliClienteSelected != 0 && pozoIdSelected != 0"
          @click="crearProyecto"
          class="bp btn"
          role="button"
          style="margin-right: 20px; background-color: #fa8f14; color: white"
        >
          Crear Proyecto
        </button>

      </div>
    </section>


  </div>
</template>

<script setup>
//Imports que se quedan
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaSCliente from '../../components/TablaSCliente.vue'
import TablaPozoDis from '../../components/TablaPozoDis.vue'
import Pagination from '../../components/Pagination.vue'
import { getSPCliente} from '../../Services/Proyectos/GetSPCliente.services'
import {getPozosDisponibles} from '../../Services/Proyectos/GetPozosDis.services'
import {postProyectoNuevo} from '../../Services/Proyectos/PostProyecto.services'
import { useRouter } from 'vue-router'


/*
 
 * VARIABLES 

 */

const router = useRouter()
let componentName = ref('')
let style = ref('')
let solicitudesCli = ref([])
let pozosDisponibles = ref([])
let pozoIdSelected = ref(0)
let changePageSoCliente = ref(0)
let changePagePozo = ref(0)
let soliClienteSelected = ref('')
let minSoliClienteSelected = ref(0)
let nombreProyecto = ref('')
let descripcionPro = ref('')


componentName.value = 'solicitudes_clientes'



/*
 
 * CONSUMO DE LA API  

 */

onMounted(async () => {
  getSPCliente(changePageSoCliente.value).then((Response) => (solicitudesCli.value = Response.data))
})


/*
 
 * METHODS

 */


const getIdSoliCliente = (id_solicitud, id_min) => {
  soliClienteSelected.value = id_solicitud
  minSoliClienteSelected.value = id_min
} 

const nextPagSCliente = () => {
  if (solicitudesCli.value.length == 5) {
    changePageSoCliente.value += 5
    getNewPageSCliente()
  }
}

const backPagSCliente = () => {
  if (changePageSoCliente.value >= 5) {
    changePageSoCliente.value -= 5
    getNewPageSCliente()
  }
}

const getNewPageSCliente = async () => {
  getSPCliente(changePageSoCliente.value).then((Response) => (solicitudesCli.value = Response.data))
}

const nextPagPozo = () => {
  if (pozosDisponibles.value.length == 5) {
    changePagePozo.value += 5
    getNewPagePozo()
  }
}

const backPagPozo = () => {
  if (changePagePozo.value >= 5) {
    changePagePozo.value -= 5
    getNewPagePozo()
  }
}

const getNewPagePozo = async () => {
  getPozosDisponibles(changePagePozo.value, minSoliClienteSelected.value).then((Response) => (pozosDisponibles.value = Response.data))
}

const getPozos = async () => {
  getPozosDisponibles(changePagePozo.value, minSoliClienteSelected.value).then((Response) => (pozosDisponibles.value = Response.data))
}


const handleClickBack = () => {
  switch (componentName.value) {
    case 'pozos_disponible':
      soliClienteSelected.value = 0
      minSoliClienteSelected.value = 0
      pozoIdSelected.value = 0
      componentName.value = 'solicitudes_clientes'
      break
  }
}

const handleClickNext = () => {
  switch (componentName.value) {
    case 'solicitudes_clientes':
      getPozos()
      componentName.value = 'pozos_disponible'
      break
  }
}

const getPozoID =  (id_pozo) => {
  pozoIdSelected.value = id_pozo
}

const crearProyecto = () => {
  postProyectoNuevo({
    nombreP : nombreProyecto.value, 
    descripcion : descripcionPro.value, 
    mineral_id : minSoliClienteSelected.value,
    pozo_id : pozoIdSelected.value,
    solicitud_id : soliClienteSelected.value
  })
  

  router.push({name: 'proyectos'})

  
}

</script>

<style scoped>
hr {
  margin-top: 1px;
}

.pCrearP {
  font-size: 12px;
  font-weight: bold;
}

.nproyecto.form-control{
  border-radius: 10px ;
  border: solid 1px #629189;
}
</style>
