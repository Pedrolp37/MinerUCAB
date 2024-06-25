<template>
  <div>
    <NavBarVue />
    <section style="margin-top: 70px">
      <div class="container">
        <div class="row">
          <div class="col-6 d-flex justify-content-start">
            <h3 style="color: #a57844">Proyectos En Curso</h3>
          </div>
          <div class="col-6 d-flex justify-content-end">
            <router-link :to="{ name: 'crear_proyecto' }" class="button btn"
              ><i class="bi bi-plus-circle"></i> Crear Nuevo Proyecto</router-link
            >
          </div>
        </div>
        <hr />
        <div class="row">
          <div class="col d-flex justify-content-end">
            <router-link :to="{ name: 'proyectos_todos' }" class="btn" style="color: #fa8f14"
              >Ver todos los proyectos</router-link
            >
          </div>
        </div>
        <div class="d-flex flex-wrap flex-row justify-content-around">
          <CardVue
            v-for="(elm, index) in proyectos"
            :key="index"
            :idPro="elm.id"
            :nomProyecto="elm.name"
            :nomLiderPro="elm.nameLPro"
            :nomLiderMin="elm.nameLMin"
            :culminacion="elm.fC"
            @dltPro="deletePro"
          />
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import CardVue from '../../components/CardProEnCurso.vue'
import NavBarVue from '../../components/NavBar.vue'

let proyectos = ref([])

//ejemplo
proyectos.value = [
  {
    id: 1,
    name: '% Andrómeda',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    fC: '01/02/24'
  },

  {
    id: 2,
    name: '% Lactea',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    fC: '01/02/24'
  },

  {
    id: 3,
    name: '% Gemini',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    fC: '01/02/24'
  }
]

const deletePro = (id) => {
  proyectos.value.splice(
    proyectos.value.findIndex((elm) => elm.id == id),
    1
  )
}
</script>

<style scoped>
hr {
  border-top: 2px solid #161717;
}

.button {
  height: 40px;
  border-radius: 10px;
  background-color: #fa8f14;
  color: white;
  text-align: center;
  font-weight: bold;
  font-size: 14px;
}
</style>
