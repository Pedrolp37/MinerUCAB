<template>
  <div>
    <div class="act card" style="">
      <div class="act card-body">
        <h5 class="card-title" style="text-align: center">{{ 'Estatus' }}</h5>
        <div v-for="(elm, index) in 5" :key="index" class="sub card">
          <div class="sub card-body">
            <div class="d-flex flex-column justify-content-center">
              <router-link
                :to="{ name: 'actividad_detalle', params: { id: 1 } }"
                class="btn card-title"
                ><i class="bi bi-person-lines-fill">{{ ' Actividad' }}</i>
              </router-link>
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
