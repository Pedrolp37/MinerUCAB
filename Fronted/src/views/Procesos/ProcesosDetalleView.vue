<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 70px">
        <div class="col d-flex justify-content-start">
          <h3 style="color: #a57844">Procesos</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <button class="addMin btn">Agregar Etapa <i class="bi bi-plus-circle"></i></button>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaDetalleMineralesVue
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import NavBarVue from '../../components/NavBar.vue'
import TablaDetalleMineralesVue from '../../components/TablaDetalleMinerales.vue'
</script>

<style scoped>

</style>
