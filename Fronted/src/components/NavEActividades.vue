<template>
  <div class="container">
    <div class="row" style="margin: 60px">
      <div class="col d-flex justify-content-start">
        <h3 style="color: #a57844">Etapas</h3>
      </div>
      <div class="col d-flex justify-content-end">
        <router-link :to="{ name: 'proyectos' }" class="btn" style="color: #fa8f14"
          >Regresar ( proyectos en curso )</router-link
        >
      </div>
    </div>
    <div class="row d-flex justify-content-start">
      <div class="pCrearP col-1">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa1')"
          :style="{ color: etapaOption == 'etapa1' ? '#fa8f14' : 'black' }"
        >
          Etapa 1
        </button>
      </div>
      <div class="pCrearP col-1">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa2')"
          :style="{ color: etapaOption == 'etapa2' ? '#fa8f14' : 'black' }"
        >
          Etapa 2
        </button>
      </div>
      <div class="pCrearP col-1">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa3')"
          :style="{ color: etapaOption == 'etapa3' ? '#fa8f14' : 'black' }"
        >
          Etapa 3
        </button>
      </div>
      <div class="pCrearP col-1">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa4')"
          :style="{ color: etapaOption == 'etapa4' ? '#fa8f14' : 'black' }"
        >
          Etapa 4
        </button>
      </div>
      <div class="pCrearP col-1">
        <button
          class="pCrearP btn"
          @click="handleClickOption('etapa5')"
          :style="{ color: etapaOption == 'etapa5' ? '#fa8f14' : 'black' }"
        >
          Etapa 5
        </button>
      </div>
    </div>
    <hr />
    <div class="row" style="margin-top: 40px">
      <div class="col-3">
        <div>
          <label class="form-label"><i class="bi bi-search"></i>Buscar Actividad</label>
          <input
            type="text"
            class="form-control"
            aria-label="Username"
            aria-describedby="basic-addon1"
          />
        </div>
      </div>
      <div class="pCrearP col d-flex justify-content-end">
        <div>
          <button class="gIF btn">Generar Informe</button>
        </div>
      </div>
    </div>
    <div class="d-flex flex-wrap justify-content-around" style="margin-top: 50px">
      <CardActividadesVue v-for="(elm, index) in 5" :key="index" @detActividad="getActivity" />
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import CardActividadesVue from './CardActividades.vue'

let etapaOption = ref('')

etapaOption.value = 'etapa1'
const handleClickOption = (option) => {
  etapaOption.value = option
}

const emit = defineEmits(['getActivity'])

const getActivity = (elm) => {
  emit('getActivity', elm)
}
</script>

<style scoped>
hr {
  margin: auto;
}

.pCrearP {
  font-size: 12px;
  font-weight: bold;
}

.form-label {
  color: #86822f;
  font-size: 15px;
}

.bi {
  font-size: 18px;
}

.gIF.btn {
  background-color: #ccb335;
  color: white;
  margin-bottom: 8px;
}
</style>
