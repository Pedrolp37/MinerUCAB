<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col-6 d-flex justify-content-start">
          <h3 style="color: #a57844">Inventario MinerUcab</h3>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 80px">
        <div class="col ">
          <div class="d-flex justify-content-center">
            <TablaInventario :inventario="inventario" />
          </div>
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagMinerals" @nextPag="nextPagMinerals" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaInventario from '../../components/TablaInventario.vue'
import Pagination from '../../components/Pagination.vue'
import {getInventario} from '../../Services/Inventario/InventarioGet.services.js'


/*

* VARIABLES

*/
let inventario = ref([])


/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getInventario().then((Response) => (inventario.value = Response.data))
})

inventario.value = [
  {
    mineral: 'Oro',
    cantidad: 50000,
    fcAdqui: '12-12-2002'
  },
  {
    mineral: 'Plata',
    cantidad: 50000,
    fcAdqui: '12-12-2002'
  },
  {
    mineral: 'Carbón',
    cantidad: 50000,
    fcAdqui: '12-12-2002'
  }
]
</script>

<style scoped></style>
