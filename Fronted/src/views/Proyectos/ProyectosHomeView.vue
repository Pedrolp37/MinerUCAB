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
            <!--Este router link te manda a crear proyecto-->
            <router-link :to="{ name: 'crear_proyecto' }" class="button btn"
              >+ Crear Nuevo Proyecto</router-link
            >
          </div>
        </div>
        <hr />
        <div class="row">
          <div class="col d-flex justify-content-end">
            <a href="" role="button" class="btn" style="color: #fa8f14">Ver todos los proyectos</a>
          </div>
        </div>
        <div class="d-flex flex-wrap flex-row justify-content-around">
          <CardVue
            v-for="(elm, index) in proyectos"
            :key="index"
            :nomProyecto="elm.name"
            :tipoProyecto="elm.tipo"
            :nomLiderPro="elm.nameLPro"
            :nomLiderMin="elm.nameLMin"
            :numExplotaciones="elm.Exp"
            :culminacion="elm.fC"
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
proyectos = [
  {
    name: '% Andrómeda',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  },

  {
    name: '% Lactea',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  },

  {
    name: '% Gemini',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  }
]
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
