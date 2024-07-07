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
          <TablaMinerales
            :minSelected="[]"
            :solicitud="true"
            :minerals="mineralsList"
            :filteredMinerals="[]"
            @getIdMin="getMineralSelected"
          />
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagMinerals" @nextPag="nextPagMinerals" />
          </div>
        </div>
        <div class="col">
          <div class="d-flex justify-content-start">
            <select
              class="metodo form-select"
              aria-label="Default select example"
              v-model="metodoP"
            >
              <option selected>Seleccionar Método De Pago</option>
              <option value="1">Efectivo</option>
              <option value="2">Transferencia</option>
              <option value="3">Cheque</option>
              <option value="4">Tarjeta De Débito</option>
              <option value="5">Tarjeta De Crédito</option>
            </select>
          </div>
          <div class="d-flex justify-content-start" style="margin-top: 20px">
            <MetodoDePago
              v-if="metodoPList.length == 0"
              :metodo="metodoP"
              @metodoInf="getMeotodoPagoInf"
            />
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row" style="margin-top: 60px">
        <div v-if="mineral.length != 0" class="col-6">
          <h5 style="color: #a57844">Mineral Seleccionado</h5>
          <TablaMinerales
            :minSelected="mineral"
            :solicitud="false"
            :minerals="mineral"
            :filteredMinerals="[]"
            @deleteMinSS="deleteMinS"
          />
          <div v-if="mineral.length != 0" style="margin-bottom: 20px">
            <div class="dolar input-group">
              <span class="dolar input-group-text">#</span>
              <input
                type="number"
                class="form-control"
                aria-label="Amount (to the nearest dollar) "
                :placeholder="'Introducir Cantidad'"
                v-model="cantMineral"
              />
            </div>
          </div>
        </div>
        <div v-if="metodoPList.length != 0" class="col-6">
          <h5 style="color: #a57844">Métodos Seleccionados</h5>
          <TablaMetodos :metodosInf="metodoPList" @deleteMetdSS="deleteMetdS" />
        </div>
      </div>
      <hr />
      <div
        v-if="metodoPList.length != 0 && mineral.length != 0 && cantMineral > 0"
        class="row"
        style="margin-top: 30px; margin-bottom: 30px"
      >
        <div class="col d-flex justify-content-end">
          <button class="guardarS btn" @click="CrearSolicitudCliente">Crear Solicitud</button>
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
import MetodoDePago from '../../components/MetodosDePago.vue'
import TablaMetodos from '../../components/TablaMetodos.vue'
import Pagination from '../../components/Pagination.vue'
import { getClientes } from '../../Services/Clientes/ClientesGet.services.js'
import { getCliente } from '../../Services/Clientes/ClienteGet.services.js'
import { getMinerales } from '../../Services/Minerales/MineralesGet.services.js'
import { getMineral } from '../../Services/Minerales/MineralGet.services.js'
import { postMetodo } from '../../Services/Solicitudes/PostSoliCliente.services.js'
import { useRoute, useRouter } from 'vue-router'

/*

* VARIABLES

*/
const router = useRouter()
let metodoP = ref('Seleccionar Método De Pago')
let metodoPList = ref([])
let cantMineral = ref(0)
let mineralsList = ref([])
let mineral = ref([])
let clientes = ref([])
let cliente = ref([])
let changePageCliente = ref(0)

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
  getMineral(id).then((Response) => (mineral.value = Response.data))
}

const deleteMinS = (id) => {
  cantMineral.value = 0
  mineral.value.splice(
    mineral.value.findIndex((elm) => elm.id == id),
    1
  )
}

const deleteMetdS = (metodo) => {
  metodoPList.value.splice(
    metodoPList.value.findIndex((elm) => elm.metodo == metodo),
    1
  )
}

const getMeotodoPagoInf = (metodo, monto, numInf, fechaV) => {
  switch (metodo) {
    case 1:
      metodoPList.value.push({
        metodo: metodo,
        monto: monto
      })
      break
    case 2:
      metodoPList.value.push({
        metodo: metodo,
        monto: monto,
        numInf: numInf
      })
      break
    case 3:
      metodoPList.value.push({
        metodo: metodo,
        monto: monto,
        numInf: numInf
      })
      break
    case 4:
      metodoPList.value.push({
        metodo: metodo,
        monto: monto,
        numInf: numInf,
        fechaV: fechaV
      })
      break
    case 5:
      metodoPList.value.push({
        metodo: metodo,
        monto: monto,
        numInf: numInf,
        fechaV: fechaV
      })
      break
  }
}

const CrearSolicitudCliente = () => {
  switch (metodoPList.value[0].metodo) {
    case 1:
      postMetodo({
        id_cliente: cliente.value[0].dni,
        denominacion: 'dolar',
        num_transferencia: null,
        num_cheque: null,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'Efectivo',
        mineral_id: mineral.value[0].id,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 2:
      postMetodo({
        id_cliente: cliente.value[0].dni,
        denominacion: null,
        num_transferencia: metodoPList.value[0].numInf,
        num_cheque: null,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'Transferencia',
        mineral_id: mineral.value[0].id,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 3:
      postMetodo({
        id_cliente: cliente.value[0].dni,
        denominacion: null,
        num_transferencia: null,
        num_cheque: metodoPList.value[0].numInf,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'Cheque',
        mineral_id: mineral.value[0].id,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 4:
      postMetodo({
        id_cliente: cliente.value[0].dni,
        denominacion: null,
        num_transferencia: null,
        num_cheque: null,
        num_tarjetaTDD: metodoPList.value[0].numInf,
        tdd_vencimiento: metodoPList.value[0].fechaV,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'TDD',
        mineral_id: mineral.value[0].id,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 5:
      postMetodo({
        id_cliente: cliente.value[0].dni,
        denominacion: null,
        num_transferencia: null,
        num_cheque: null,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: metodoPList.value[0].numInf,
        tdc_vencimiento: metodoPList.value[0].fechaV,
        tipo_metodoP: 'TDC',
        mineral_id: mineral.value[0].id,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
  }
}
</script>

<style scoped>
.metodo.form-select {
  background-color: #999981;
  color: white;
  border-radius: 10px;
  width: 80vh;
}
.dolar.input-group-text {
  background-color: #7a6d5d;
  color: white;
}

.guardarS.btn {
  background-color: #44694a;
  color: white;
  width: 30vw;
}

.guardarS.btn:hover {
  background-color: #fa8f1400;
  color: black;
}
</style>
