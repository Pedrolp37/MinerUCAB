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
            :idPro="elm.pro_id"
            :nomProyecto="elm.pro_nombre"
            :culminacion="elm.pro_fecha_fin"
            @dltPro="deletePro"
          /> 
        </div>
        <div class="d-flex justify-content-center">
            <Pagination @backPag="backPagPro" @nextPag="nextPagPro" />
          </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import CardVue from '../../components/CardProEnCurso.vue'
import NavBarVue from '../../components/NavBar.vue'
import Pagination from '../../components/Pagination.vue'
import {getProCurso} from '../../Services/Proyectos/GetProCurso.services'

/*

* VARIABLES

*/

let proyectos = ref([])
let changePageProyectos = ref(0)


/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getProCurso(changePageProyectos.value).then((Response) => (proyectos.value = Response.data))
})

/*

* METHODS

*/

const nextPagPro = () => {
  if (proyectos.value.length == 3) {
    changePageProyectos.value += 3
    getNewPagePro()
  }
}

const backPagPro  = () => {
  if (changePageProyectos.value >= 3) {
    changePageProyectos.value -= 3
    getNewPagePro()
  }
}

const getNewPagePro  = async () => {
  getProCurso(changePageProyectos.value).then((Response) => (proyectos.value = Response.data))
}

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
