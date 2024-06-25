<template>
  <div>
    <table class="table table-striped" id="table" style="width: 60vw">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Etapa</th>
          <th class="tabla Cabecera">N-Actividades</th>
          <th class="tabla Cabecera">Opciones</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(stage, index) in props.stages" :key="index" style="text-align: center">
          <td class="tdContainer">{{ stage.id }}</td>
          <td class="tdContainer">{{ stage.acts.length }}</td>
          <td class="tdContainer">
            <button
              class="option btn"
              @click="getDetalleEtapa(stage.id)"
              data-bs-toggle="modal"
              data-bs-target="#detalleEmpleado"
            >
              Ver Detalle
            </button>
            |
            <button class="option btn">Modificar Etapa</button>
          </td>
        </tr>
      </tbody>
    </table>
    <div
      class="modal fade"
      id="detalleEmpleado"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Detalle (Etapa)</h1>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="container">
              <div>
                <table class="table table-striped" id="table">
                  <thead>
                    <tr style="text-align: center">
                      <th>Actividades</th>
                      <th>SubActividades</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(act, index) in activities" :key="index" style="text-align: center">
                      <td class="tdContainer">{{ act.name }}</td>
                      <td class="tdContainer">
                        <div>
                          <p v-for="(subAct, index) in act.subActs" :key="index">{{ subAct }}</p>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { useRoute } from 'vue-router'

let activities = ref([])

const props = defineProps({
  stages: {
    required: true
  }
})

const getDetalleEtapa = (id) => {
  props.stages.forEach((elm) => {
    if (elm.id === id) {
      console.log('hola')
      activities.value = elm.acts
    }
  })
}
</script>

<style scoped>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

.tdContainer {
  align-content: center;
}

.option.btn {
  background-color: #fa8f14;
  color: white;
}

.option.btn:hover {
  background-color: #7d6850;
  color: white;
}
</style>
