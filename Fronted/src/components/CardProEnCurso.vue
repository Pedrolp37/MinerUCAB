<template>
  <div class="proCurso card" style="width: 20rem; margin-bottom: 20px">
    <div class="proCurso card-body">
      <h5 class="card-title">{{ props.nomProyecto }}</h5>
      <h6 class="card-subtitle mb-2 text-body-secondary" style="margin-left: 20px">
        {{ tipoProyecto }}
      </h6>
      <hr />
      <div style="margin-top: 20px">
        <p class="contPro">Lider Proyecto: {{ props.nomLiderPro }}</p>
        <p class="contPro">Lider Mina: {{ props.nomLiderMin }}</p>
        <p class="contPro">Explotaciones: {{ props.numExplotaciones }}</p>
        <p class="contPro">Culminación: {{ props.culminacion }}</p>
      </div>
      <hr />
      <div class="d-flex justify-content-center">
        <!-- Esto está mal hay que arreglarlo para que sea un detalle
        por proyecto específico no un para todos -->
        <router-link :to="{ name: 'detalle_proyecto' }" class="btn button"
          >Ver Detalle Proyecto</router-link
        >
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  nomProyecto: {
    type: String,
    required: true
  },

  tipoProyecto: {
    type: String,
    required: true
  },

  nomLiderPro: {
    type: String,
    required: true
  },

  nomLiderMin: {
    type: String,
    required: true
  },

  numExplotaciones: {
    type: Number,
    required: true
  },

  culminacion: {
    type: String,
    required: true
  }
})
</script>

<style scoped>
hr {
  border-top: solid 2px black;
}

.proCurso.card {
  margin-top: 20px;
  border: solid 1px #cf8633;
  border-radius: 25px;
}

.btn {
  font-size: 10px;
  background-color: rgb(61, 137, 169);
  color: white;
  margin: 2px;
}

.contPro {
  margin: 3px;
  color: #7a6247;
}

.button {
  background-color: #bcbc42;
  color: black;
}

.button:hover {
  background-color: #f3f37b;
  color: black;
}
</style>
