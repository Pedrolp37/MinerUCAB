<template>
  <div>
    <NavBarVue :proyectos="proyectos" />
    <section style="margin-top: 70px">
      <div class="container">
        <div class="row">
          <div class="col-6 d-flex justify-content-start">
            <h3 style="color: #a57844">Creación de Proyectos</h3>
          </div>
          <div class="col-6 d-flex justify-content-end">
            <!--Este router link te manda a crear proyecto-->
            <router-link  :to="{name: 'proyectos'}" class="btn" style="color: #fa8f14"
              >Regresar a proyectos</router-link
            >
          </div>
        </div>
        <div class="row d-flex justify-content-start" style="margin-top: 40px">
          <div class="pCrearP col-2" :style="style">
            <p class="pCrearP">Información proyecto</p>
          </div>
          <div class="pCrearP col-1">
            <p class="pCrearP">Cliente</p>
          </div>
          <div class="pCrearP col-1">
            <p class="pCrearP">Personal</p>
          </div>
          <div class="pCrearP col-2">
            <p class="pCrearP">Equipo</p>
          </div>
        </div>
        <hr />
      </div>
    </section>
    <section>
      <!-- Manejo de estados -->
      <FormInfProVue v-show="componentName == 'infPro'  "/>
      <FormClienteVue v-show="componentName == 'cliente'"/>
      <!--  -->
    </section>
    <section>
      <!--Esto lo puedes poner dentro de los forms-->
      <div class="d-flex flex-row justify-content-end">
        <!--Manejo de estados -->
        <button  v-show="componentName == 'infPro'" class="bP btn" style="margin-right: 20px; background-color:#A57844; color: white">Verificar capacidad</button>
        <button  v-show="componentName == 'cliente'"  @click="handleClickBack" class="bP btn" style="margin-right: 20px; background-color:#A57844; color: white">Volver</button>
        <button  v-show="componentName == 'infPro' "  @click="handleClickNext"  class="bp btn" role="button" style="margin-right:20px; background-color:#FA8F14; color: white">Continuar</button>
        <button  v-show="componentName == 'cliente'"  @click="handleClickNext" class="bp btn" role="button" style="margin-right:20px; background-color:#FA8F14; color: white">Continuar</button>
        <!--  -->
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import {useRoute} from 'vue-router'
import FormInfProVue from '../../components/FormInfPro.vue'
import FormClienteVue from '../../components/FormCliente.vue'
import NavBarVue from '../../components/NavBar.vue'

//variables y constantes
let proyectos = ref([])
let componentName = ref('')
let style = ref('')
componentName.value = "infPro"


const handleClickBack = () => {
  switch(componentName.value) {
    case "cliente":
      componentName.value = "infPro"
    break;
  }
}

const handleClickNext = () => {
  switch (componentName.value) {
    case "infPro":
      componentName.value = "cliente"
    break;
    case "cliente":
      componentName.value = ""
    break;
  }
}





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
  margin-top: 1px;
}

.pCrearP {
  font-size: 12px;
  font-weight: bold;
}

</style>
