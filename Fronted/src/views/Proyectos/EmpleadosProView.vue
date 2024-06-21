<template>
  <div class="body container">
    <div class="row" style="margin: 40px">
      <div class="col d-flex justify-content-start">
        <h3 style="color: #a57844">Empleados</h3>
      </div>
    </div>
    <div class="row">
      <div class="pCrearP col-3">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa1')"
          :style="{ color: etapaOption == 'etapa1' ? '#fa8f14' : 'black' }"
        >
          MinerUcab
        </button>
      </div>
      <div class="pCrearP col-3">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa2')"
          :style="{ color: etapaOption == 'etapa2' ? '#fa8f14' : 'black' }"
        >
          Tercearios
        </button>
      </div>
    </div>
    <hr />
    <div class="row" style="margin-top: 40px">
      <div class="col-4">
        <div class="input-group">
          <input
            type="text"
            class="form-control"
            aria-label="Username"
            aria-describedby="basic-addon1"
          />
          <select class="form-select" aria-label="Default select example">
            <option selected>Buscar por</option>
            <option value="1">One</option>
            <option value="2">Two</option>
            <option value="3">Three</option>
          </select>
        </div>
      </div>
    </div>
    <div class="row" style="">

    </div>
  </div>
</template>

<script setup>
import NavBarVue from '../../components/NavBar.vue'
</script>

<style scoped>
.body.container {
  height: 100vh;
}

.pCrearP {
  font-size: 12px;
  font-weight: bold;
}

.form-label {
  color: #30302c;
  font-size: 15px;
}

.form-control {
  border: solid 1px #859a9c;
  border-radius: 10px;
}

.form-select {
  background-color: #999981;
  color: white;
  border-radius: 10px;
}

hr {
  margin: auto;
}
</style>
