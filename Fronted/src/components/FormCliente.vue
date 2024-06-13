<template>
  <section>
    <div class="container" style="margin-top: 40px">
      <div class="row" >
        <div class="col-1">
          <p class="tCliente">Habitual</p>
        </div>
        <div class="col-2">
          <p class="tCliente">Nuevo</p>
        </div>
      </div>
      <div class="row ">
        <div class="col-2">
          <hr>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col d-flex justify-content-start" style="margin:40px">
          <h3>Hola</h3>
        </div>
        <div class="col d-flex justify-content-end" style="margin:40px">
          <h3>Hola</h3>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import FormCHabitualVue from './FormCHabitual.vue'
import FormCNuevoVue from './FormCNuevo.vue'
</script>

<style scoped>
hr{
  margin: 1px;
}

.tCliente{
  font-size: 12px;
  font-weight: bold;
}
</style>
