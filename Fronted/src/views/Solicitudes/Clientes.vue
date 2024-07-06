<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 60px">
        <hr />
        <div class="col">
          <h3 style="color: #a57844; margin-left: 30px">Clientes Regitrados</h3>
        </div>
      </div>
      <div class="row" style="margin-top: 20px">
        <div class="col">
          <div class="d-flex justify-content-center">
            <TablaCliente
              @getId="getClienteSelected"
              :clienteFiltered="[]"
              :clientes="clientes"
              :soliCliente="true"
            />
          </div>
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagCliente" @nextPag="nextPagCliente" />
          </div>
        </div>
      </div>
      <hr />
    </div>
    <div v-if="cliente.length != 0" class="container">
      <div class="row" style="margin-top: 60px">
        <div class="col">
          <h3 style="color: #a57844; margin-left: 30px">Solicitud Del Cliente</h3>
          <h6 style="color: #58534d; margin-left: 30px">
            {{ cliente[0].name }} {{ cliente[0].lastname }}
          </h6>
        </div>
      </div>
      <div class="row" style="margin-top: 30px">
        <div class="col">
          <TablaMinerales :solicitud="true" :minerals="mineralsList" :filteredMinerals="[]" @getIdMin='getMineralSelected'/>
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagMinerals" @nextPag="nextPagMinerals" />
          </div>
        </div>
        <div class="col">
          
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaCliente from '../../components/TablaClientes.vue'
import TablaMinerales from '../../components/TablaMinerales.vue'
import Pagination from '../../components/Pagination.vue'
import { getClientes } from '../../Services/Clientes/ClientesGet.services.js'
import { getCliente } from '../../Services/Clientes/ClienteGet.services.js'
import { getMinerales } from '../../Services/Minerales/MineralesGet.services'

/*

* VARIABLES

*/
let mineralsList = ref([])
let clientes = ref([])
let cliente = ref([])
let changePageCliente = ref(0)
let changePageMinerals = ref(0)
/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getClientes(changePageCliente.value).then((Response) => (clientes.value = Response.data))
})

onMounted(async () => {
  getMinerales(changePageMinerals.value).then((Response) => (mineralsList.value = Response.data))
})


/*

* METHODS

*/

const nextPagCliente = () => {
  if (clientes.value.length == 5) {
    changePageCliente.value += 5
    getNewPageCliente()
  }
}

const backPagCliente = () => {
  if (changePageCliente.value >= 5) {
    changePageCliente.value -= 5
    getNewPageCliente()
  }
}

const getNewPageCliente = async () => {
  getClientes(changePageCliente.value).then((Response) => (clientes.value = Response.data))
}

const nextPagMinerals = () => {
  if (mineralsList.value.length == 5) {
    changePageMinerals.value += 5
    getNewPageMinerals()
  }
}

const backPagMinerals = () => {
  if (changePageMinerals.value >= 5) {
    changePageMinerals.value -= 5
    getNewPageMinerals()
  }
}

const getNewPageMinerals = async () => {
  getMinerales(changePageMinerals.value).then((Response) => (mineralsList.value = Response.data))
}

const getClienteSelected = async (dni) => {
  getCliente(dni).then((Response) => (cliente.value = Response.data))
}

const getMineralSelected = async (id) => {
  alert(id)
}
</script>

<style scoped></style>
