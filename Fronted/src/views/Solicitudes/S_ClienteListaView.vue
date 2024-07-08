<template>
  <div>
    <NavBarVue />
    <div class="container" style="margin-top: 60px">
      <div class="row">
        <div class="col">
          <h2 style="color: #a57844; margin-left: 30px">Solicitudes Cliente</h2>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 60px">
        <div class="col">
          <div class="d-flex justify-content-center">
            <TablaSCliente :soliCliente="solicitudesCli" :isCProyecto="false"/>
          </div>
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagSCliente" @nextPag="nextPagSCliente" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaSCliente from '../../components/TablaSCliente.vue'
import Pagination from '../../components/Pagination.vue'
import { getSoliCliente} from '../../Services/Solicitudes/GetSoliCliente.services.js'
import { useRoute, useRouter } from 'vue-router'

/*

* VARIABLES

*/
const router = useRouter()
let solicitudesCli = ref([])
let changePageSoCliente = ref(0)

/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getSoliCliente(changePageSoCliente.value).then((Response) => (solicitudesCli.value = Response.data))
})

/*

* METHODS

*/

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
  getSoliCliente(changePageSoCliente.value).then((Response) => (solicitudesCli.value = Response.data))
}

</script>

<style scoped></style>
