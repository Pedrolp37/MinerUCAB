<template>
  <div>
    <NavBarVue />
    <div class="container" style="margin-top: 60px">
      <div class="row">
        <div class="col">
          <div class="d-flex justify-content-center">
            <TablaAliados
              :aliados="aliados"
              :aliadosFiltered="[]"
              :solicitud="true"

              @aliSelected="getAliadoSelected"
            />
          </div>
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagAliado" @nextPag="nextPagAliado" />
          </div>
        </div>
      </div>
      <hr>
    </div>
    <div v-if="alidoSelected.length != 0" class="container" style="margin-top: 60px">
      <div class="row" >
        <div class="col d-flex flex-column justify-content-start">
          <h3 style="color: #a57844; margin-left: 30px">Solicitud Del Cliente</h3>
          <h6 style="color: #58534d; margin-left: 30px">
            {{ alidoSelected[0].nombre }}
          </h6>
        </div>
        <div class="col">
          <div class="d-flex justify-content-end">
            <select
              class="metodo form-select"
              aria-label="Default select example"
              v-model="tipoSolicitud"
            >
              <option selected>Seleccionar Tipo Solicitud</option>
              <option value="1">Minerales</option>
              <option value="2">Recursos</option>
              <option value="3">Empleados</option>
            </select>
          </div>
        </div>
      </div>
    </div>
    <div v-show="tipoSolicitud == '1' "  class="container" style="margin-top: 80px">
      <div class="row">
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

      <!-- Seleccionado -->
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
            <button class="guardarS btn" @click="CrearSolicitudAliado">Crear Solicitud</button>
          </div>
        </div>
      </div>
    </div>
    <div v-show="tipoSolicitud == '2'"  class="container" style="margin-top: 80px">
      <div class="row">
        <div class="col">
          <h3>No disponible</h3>
        </div>
      </div>
    </div>
    <div v-show="tipoSolicitud == '3'"  class="container" style="margin-top: 80px">
      <div class="row">
        <div class="col">
          <h3>No disponible</h3>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import TablaAliados from '../../components/TablaAliados.vue'
import Pagination from '../../components/Pagination.vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaMinerales from '../../components/TablaMinerales.vue'
import MetodoDePago from '../../components/MetodosDePago.vue'
import TablaMetodos from '../../components/TablaMetodos.vue'
import { getAliados } from '../../Services/Aliados/AliadosGet.services.js'
import { getAliado } from '../../Services/Aliados/AliadoGet.services.js'
import { getMinerales } from '../../Services/Minerales/MineralesGet.services.js'
import { getMineral } from '../../Services/Minerales/MineralGet.services.js'
import {postAliadoMetodo} from '../../Services/Solicitudes/PostSoliAliado.services.js'
import { useRoute, useRouter } from 'vue-router'

/*

* VARIABLES

*/

const router = useRouter()
let metodoP = ref('Seleccionar Método De Pago')
let metodoPList = ref([])
let aliados = ref([])
let alidoSelected = ref([])
let changePageAliados = ref(0)
let tipoSolicitud = ref('Seleccionar Tipo Solicitud')
let cantMineral = ref(0)
let mineralsList = ref([])
let mineral = ref([])
let changePageMinerals = ref(0)
/*

 * CONSUMO DE LA API

 */

onMounted(async () => {
  getAliados(changePageAliados.value).then((Response) => (aliados.value = Response.data))
})

onMounted(async () => {
  getMinerales(changePageMinerals.value).then((Response) => (mineralsList.value = Response.data))
})

/*

* MÉTODOS(FUNCIONES)

*/

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

const nextPagAliado = () => {
  if (aliados.value.length == 5) {
    changePageAliados.value += 5
    getNewPageAliado()
  }
}

const backPagAliado = () => {
  if (changePageAliados.value >= 5) {
    changePageAliados.value -= 5
    getNewPageAliado()
  }
}

const getNewPageAliado = async () => {
  getAliados(changePageAliados.value).then((Response) => (aliados.value = Response.data))
}

const getAliadoSelected = (id) => {
  getAliado(id).then((Response) => (alidoSelected.value = Response.data))
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


const CrearSolicitudAliado = () => {
  switch (metodoPList.value[0].metodo) {
    case 1:
      postAliadoMetodo({
        id_cliente: null,
        denominacion: 'dolar',
        num_transferencia: null,
        num_cheque: null,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'Efectivo',
        rif: alidoSelected.value[0].rif,
        proyecto_id : null,
        mineral_id: mineral.value[0].id,
        recurso_id : null, 
        cargo_id : null,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 2:
      postAliadoMetodo({
        id_cliente: null,
        denominacion: null,
        num_transferencia: metodoPList.value[0].numInf,
        num_cheque: null,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'Transferencia',
        rif: alidoSelected.value[0].rif,
        proyecto_id : null,
        mineral_id: mineral.value[0].id,
        recurso_id : null, 
        cargo_id : null,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 3:
      postAliadoMetodo({
        id_cliente: null,
        denominacion: null,
        num_transferencia: null,
        num_cheque: metodoPList.value[0].numInf,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'Cheque',
        rif: alidoSelected.value[0].rif,
        proyecto_id : null,
        mineral_id: mineral.value[0].id,
        recurso_id : null, 
        cargo_id : null,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 4:
      postAliadoMetodo({
        id_cliente: null,
        denominacion: null,
        num_transferencia: null,
        num_cheque: null,
        num_tarjetaTDD: metodoPList.value[0].numInf,
        tdd_vencimiento: metodoPList.value[0].fechaV,
        num_tarjetaTDC: null,
        tdc_vencimiento: null,
        tipo_metodoP: 'TDD',
        rif: alidoSelected.value[0].rif,
        proyecto_id : null,
        mineral_id: mineral.value[0].id,
        recurso_id : null, 
        cargo_id : null,
        cantidad: cantMineral.value,
        obs: null
      })
      router.go()
      break
    case 5:
      postAliadoMetodo({
        id_cliente: null,
        denominacion: null,
        num_transferencia: null,
        num_cheque: null,
        num_tarjetaTDD: null,
        tdd_vencimiento: null,
        num_tarjetaTDC: metodoPList.value[0].numInf,
        tdc_vencimiento: metodoPList.value[0].fechaV,
        tipo_metodoP: 'TDC',
        rif: alidoSelected.value[0].rif,
        proyecto_id : null,
        mineral_id: mineral.value[0].id,
        recurso_id : null, 
        cargo_id : null,
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
.seleccionar.btn {
  margin-left: 10px;
  font-size: 14px;
  background-color: #85a56c;
  color: white;
}

.seleccionar.btn:hover {
  background-color: #c3b1a300;
  color: black;
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
