<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col-6 d-flex justify-content-start">
          <h3 style="color: #a57844">Inventario MinerUcab</h3>
        </div>
      </div>
      <hr>
       <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaInventario :inventario="inventario"/>
        </div> 
      </div>
    </div>
  </div>
</template>

<script setup>
import {ref} from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaInventario from  '../../components/TablaInventario.vue'

let inventario = ref([])

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

<style scoped>

</style>