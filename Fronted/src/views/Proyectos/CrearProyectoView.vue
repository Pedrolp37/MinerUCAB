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
        <div class="row d-flex justify-content-start" style="margin-top: 40px">
          <div
            class="pCrearP col-2"
            :style="{ color: componentName == 'infPro' ? '#fa8f14' : 'black' }"
          >


            <p class="pCrearP">Solicitudes Clientes</p>
          </div>
          <div class="pCrearP col-1">
            <p class="pCrearP" :style="{ color: componentName == 'cliente' ? '#fa8f14' : 'black' }">
              Cliente
            </p>
          </div>
          <div class="pCrearP col-1">
            <p
              class="pCrearP"
              :style="{ color: componentName == 'personal' ? '#fa8f14' : 'black' }"
            >
              Personal
            </p>
          </div>
          <div class="pCrearP col-2">
            <p
              class="pCrearP"
              :style="{ color: componentName == 'recursos' ? '#fa8f14' : 'black' }"
            >
              Recursos
            </p>
          </div>
        </div>
        <hr />
      </div>
    </section>


    <section>
      <div v-if="componentName == 'infPro'" class="container" style="margin-top: 30px">
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


      <FormClienteVue v-if="componentName == 'cliente'" />
      <FormPersonalVue v-if="componentName == 'personal'" />
      <FormRecursos v-if="componentName == 'recursos'" />
    </section>


    <section>
      <div class="d-flex flex-row justify-content-end" style="margin: 20px">
        <button
          v-show="
            componentName == 'cliente' || componentName == 'personal' || componentName == 'recursos'
          "
          @click="handleClickBack"
          class="bP btn"
          style="margin-right: 20px; background-color: #a57844; color: white"
        >
          Volver
        </button>
        <button
          v-show="
            componentName == 'infPro' || componentName == 'cliente' || componentName == 'personal'
          "
          @click="handleClickNext"
          class="bp btn"
          role="button"
          style="margin-right: 20px; background-color: #fa8f14; color: white"
        >
          Continuar
        </button>
        <button
          v-show="componentName == 'recursos'"
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
import FormClienteVue from '../../components/FormCliente.vue'
import FormPersonalVue from '../../components/FormPersonal.vue'
import FormRecursos from '../../components/FormRecursos.vue'

//Imports que se quedan
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaSCliente from '../../components/TablaSCliente.vue'
import Pagination from '../../components/Pagination.vue'
import { getSPCliente} from '../../Services/Proyectos/GetSPCliente.services'



/*
 
 * VARIABLES 

 */
let solicitudesCli = ref([])
let changePageSoCliente = ref(0)
let soliClienteSelected = ref('')



/*
 
 * CONSUMO DE LA API  

 */

onMounted(async () => {
  getSPCliente(changePageSoCliente.value).then((Response) => (solicitudesCli.value = Response.data))
})


/*
 
 * METHODS

 */


const getIdSoliCliente = (id_solicitud) => {
  soliClienteSelected.value = id_solicitud
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








//variables y constantes
let proyectos = ref([])
let componentName = ref('')
let style = ref('')
componentName.value = 'infPro'

const handleClickBack = () => {
  switch (componentName.value) {
    case 'cliente':
      componentName.value = 'infPro'
      break
    case 'personal':
      componentName.value = 'cliente'
      break
    case 'recursos':
      componentName.value = 'personal'
      break
  }
}

const handleClickNext = () => {
  switch (componentName.value) {
    case 'infPro':
      componentName.value = 'cliente'
      break
    case 'cliente':
      componentName.value = 'personal'
      break
    case 'personal':
      componentName.value = 'recursos'
      break
  }
}

//ejemplo
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
hr {
  margin-top: 1px;
}

.pCrearP {
  font-size: 12px;
  font-weight: bold;
}
</style>
