<template>
<table
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th>Etapa</th>
          <th>Actividades</th>
          <th>SubActividades</th>
          <th>Prioridad</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(elm, index) in mineral" :key="index" style="text-align: center">
          <td class="tdContainer">{{ elm.stages.name }}</td>
          <td class="tdContainer"><li v-for="(act, index) in elm.stages.activities" :key="index">{{act}}</li></td>
          <td class="tdContainer"><li v-for="(subAct, index) in elm.stages.subActivities" :key="index">{{subAct}}</li></td>
          <td class="tdContainer">{{ elm.stages.priority }}</td>
          <td class="tdContainer">
            <button
              class="btn"
              style="background-color: #fa8f14; color: white"
            >
              Modificar Etapa
            </button>
          </td>
        </tr>
      </tbody>
    </table>
</template>

<script setup>
import { ref } from "vue";
import { useRoute } from "vue-router";

let route = useRoute()
let minerals = ref([])
let mineral = ref({})

minerals.value = [
  {
    id: 1,
    name: 'Oro',
    stages: {
      name: 'etapa 1',
      activities: ['Limpiar', 'Cocinar'],
      subActivities: ['lavar coleto', 'cortar verduras'],
      priority: 'alta'
    }
  },
  {
    id: 2,
    name: 'Oro',
    stages: {
      name: 'etapa 2',
      activities: ['Limpiar', 'Cocinar'],
      subActivities: ['lavar coleto', 'cortar verduras'],
      priority: 'alta'

    }
  }
]

mineral.value = minerals.value.filter((elm) => elm.id == route.params.id)
console.log(mineral.value)

</script>

<style scoped>
.tdContainer{
 align-content: center;
}
</style>