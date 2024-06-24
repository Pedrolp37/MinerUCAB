<template>
  <div class="container menu">
    <div class="row">
      <div class="col d-flex flex-column" style="margin-top: 50px">
        <div class="d-flex justify-content-start">
          <h6 class="titleProyecto title">Proyecto:</h6>
        </div>
        <div class="d-flex justify-content-center">
          <button class="titleProyecto btn" @click="handleClickOption('etapas')">
            {{ 'Proyecto x' }}
          </button>
        </div>
      </div>
    </div>
    <div class="row" style="margin-top: 80px">
      <div class="col d-flex flex-column">
        <div style="text-align: center">
          <h6 style="color: white">Información</h6>
        </div>
        <hr class="sOptMenu" />
      </div>
    </div>
    <div class="row" style="margin-top: 30px">
      <div class="col d-flex flex-column">
        <div style="text-align: start">
          <button
            class="optionMenu btn"
            @click="showAlert"
            :style="{ color: optionMenu == 'cronograma' ? '#fa8f14' : 'white' }"
          >
            Cronograma
          </button>
        </div>
        <div style="text-align: start">
          <button
            class="optionMenu btn"
            @click="handleClickOption('empleados')"
            :style="{ color: optionMenu == 'empleados' ? '#fa8f14' : 'white' }"
          >
            Empleados
          </button>
        </div>
        <div style="text-align: start">
          <button
            class="optionMenu btn"
            @click="handleClickOption('cliente')"
            :style="{ color: optionMenu == 'cliente' ? '#fa8f14' : 'white' }"
          >
            Cliente
          </button>
        </div>
        <div style="text-align: start">
          <button
            class="optionMenu btn"
            @click="showAlert"
            :style="{ color: optionMenu == 'finanzas' ? '#fa8f14' : 'white' }"
          >
            Finanzas
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

let optionMenu = ref('')

const handleClickOption = (option) => {
  optionMenu.value = option
  emit('changeView', optionMenu.value)
}

const showAlert = () => {
  alert('Disponible en próximas versiones')
}

const emit = defineEmits(['changeView'])
</script>

<style scope>
.container.menu {
  width: 15%;
  height: auto;
  background-color: #7a6247;
  display: inline-block;
}

.titleProyecto.btn {
  color: #fba746;
  border: solid 1px #9d9c9a;
}

.optionMenu {
  font-size: 15px;
}

.sOptMenu {
  margin: 0px;
  border-top: solid 2px white;
}
</style>
