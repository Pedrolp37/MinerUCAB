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
        <div class="col">
          <div class="d-flex justify-content-center">
            <TablaInventario :inventario="inventario" />
          </div>
          <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagInventario" @nextPag="nextPagInventario" />
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
import { getInventario } from '../../Services/Inventario/InventarioGet.services.js'

/*

* VARIABLES

*/
let inventario = ref([])
let changePageInventario = ref(0)

/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getInventario(changePageInventario.value).then((Response) => (inventario.value = Response.data))
})

/*

* METHODS

*/

const nextPagInventario = () => {
  if (inventario.value.length == 5) {
    changePageInventario.value += 5
    getNewPageInventario()
  }
}

const backPagInventario = () => {
  if (changePageInventario.value >= 5) {
    changePageInventario.value -= 5
    getNewPageInventario()
  }
}

const getNewPageInventario = async () => {
  getInventario(changePageInventario.value).then((Response) => (inventario.value = Response.data))
}
</script>

<style scoped></style>
