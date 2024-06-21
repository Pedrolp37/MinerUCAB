<template>
  <div>
    <div class="act card" style="">
      <div class="act card-body">
        <h5 class="card-title" style="text-align: center">{{ 'Estatus' }}</h5>
        <div v-for="(elm, index) in activities" :key="index" class="sub card">
          <div class="sub card-body">
            <div class="d-flex flex-column justify-content-center">
              <button class="btn card-title" @click="getActivity(elm)">
                <i class="bi bi-person-lines-fill">{{ elm.title }}</i>
              </button>
            </div>
            <div class="d-flex flex-column justify-content-end">
              <p><i class="bi bi-calendar"></i> {{ 'Finalización' }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

let activities = ref([])

activities.value = [
  {
    id: 1,
    title: 'Limpiar',
    culmination: '12/12/12',
    description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis diam non bibendum efficitur. Suspendisse ut posuere sapien, sed imperdiet magna. Morbi sit amet massa tortor. Integer id elit vel diam condimentum dapibus',
    employees: [
      {
        name: 'Arturo',
        lastName: 'Pérez',
        horary: '12/12/12 - 13/12/13'
      }
    ],
    priority: 'Alta'
  },

  {
    id: 2,
    title: 'Romper suelo',
    culmination: '12/12/12',
    description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis diam non bibendum efficitur. Suspendisse ut posuere sapien, sed imperdiet magna. Morbi sit amet massa tortor. Integer id elit vel diam condimentum dapibus',
    employees: [
      {
        name: 'Pedro',
        lastName: 'Leal',
        horary: '12/12/12 - 13/12/13'
      }
    ],
    priority: 'Baja'
  }
]

const emit = defineEmits(['detActividad'])
const getActivity = (elm) => {
  emit('detActividad', elm)
}
</script>

<style scope>
.act.card {
  border-radius: 1px;
  width: 18rem;
  margin-bottom: 20px;
}

.sub.card {
  width: 15rem;
  margin-bottom: 5px;
}

.sub.card-body {
  background-color: #ffffff;
  border-radius: 25px;
  height: 6rem;
}

.act.card-body {
  background-color: #efecec;
  border-radius: 1px;
}

.btn.card-title {
  background-color: #46c8b8;
  color: black;
}

.btn.card-title:hover {
  background-color: #0ef1d5;
  color: white;
}
</style>
