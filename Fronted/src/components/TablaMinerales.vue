<template>
  <div>
    <table
      v-if="props.filteredMinerals.length == 0"
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th>Mineral</th>
          <th>N-Etapas</th>
          <th>N-Actividades</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(elm, index) in minerals" :key="index" style="text-align: center">
          <td>{{ elm.name }}</td>
          <td>{{ elm.stages }}</td>
          <td>{{ elm.activities.length }}</td>
          <td>
            <button class="detalle btn" @click="sendResponseSDM(elm.id)">Detalle</button>
          </td>
        </tr>
      </tbody>
    </table>
    <table
      v-if="props.filteredMinerals.length != 0"
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th>Mineral</th>
          <th>N-Etapas</th>
          <th>N-Actividades</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(elm, index) in props.filteredMinerals" :key="index" style="text-align: center">
          <td>{{ elm.name }}</td>
          <td>{{ elm.stages }}</td>
          <td>{{ elm.activities.length }}</td>
          <td>
            <button class="detalle btn" @click="sendResponseSDM(elm.id)">Detalle</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  minerals: {
    required: true
  },
  filteredMinerals: {
    required: false
  }
})

const emit = defineEmits(['showDetailMineral'])
const sendResponseSDM = (id) => {
  emit('showDetailMineral', id)
}
</script>

<style scope>
.detalle.btn {
  background-color: #fa8f14;
  color: white;
}
.detalle.btn:hover {
  background-color: #7d6850;
  color: white;
}
</style>
