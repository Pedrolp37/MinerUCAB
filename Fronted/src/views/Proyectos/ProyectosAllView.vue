<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-start">
          <h3 class="title">Proyectos</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <div>
            <router-link :to="{ name: 'proyectos' }" class="backView btn">Volver</router-link>
          </div>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 40px">
        <div class="col-3">
          <div>
            <select class="form-select" aria-label="Default select example" v-model="statusOption">
              <option selected>Seleccionar Estatus:</option>
              <option value="Pendiente">Pendiente</option>
              <option value="Proceso">Proceso</option>
              <option value="Terminado">Terminado</option>
              <option value="Atrasado">Atrasado</option>
            </select>
          </div>
          <div>
            <button class="filtrar btn" @click="getProFiltered">Filtrar</button>
            <button v-if="proFiltered.length != 0" class="back btn" @click="showAllPro">
              volver
            </button>
          </div>
        </div>
      </div>
      <div class="row" style="margin: 80px">
        <TablaProyectos
          :proyectos="proyectos"
          :proFiltered="proFiltered"
          @dltPro="deleteProyecto"
          @mDPro="modifyProyecto"
        />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaProyectos from '../../components/TablaProyectos.vue'

let statusOption = ref('Seleccionar Estatus:')
let proyectos = ref([])
let proFiltered = ref([])

//Esto es un ejemplo
proyectos.value = [
  {
    id: 1,
    name: 'TerraFormals',
    status: 'Pendiente'
  },
  {
    id: 2,
    name: 'Konoha',
    status: 'Atrasado'
  }
]

const getProFiltered = () => {
  switch (statusOption.value) {
    case 'Pendiente':
      proFiltered.value = proyectos.value.filter((elm) => elm.status == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
    case 'Proceso':
      proFiltered.value = proyectos.value.filter((elm) => elm.status == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
    case 'Terminado':
      proFiltered.value = proyectos.value.filter((elm) => elm.status == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
    case 'Atrasado':
      proFiltered.value = proyectos.value.filter((elm) => elm.status == statusOption.value)
      statusOption.value = 'Seleccionar Estatus:'
      break
  }
}

const deleteProyecto = (id) => {
  proyectos.value.splice(
    proyectos.value.findIndex((elm) => elm.id == id),
    1
  )
  showAllPro()
}

const modifyProyecto = (data) => {
  proyectos.value.forEach((elm) => {
    if (elm.id == data.id) {
      elm.name = data.name
      elm.status = data.status
    }
  })
}

const showAllPro = () => {
  proFiltered.value = []
}
</script>

<style scoped>
.backView.btn {
  background-color: #aa9985;
  color: white;
}
.title {
  color: #a57844;
}

.form-select {
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
}

.filtrar.btn {
  margin-top: 10px;
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
}

.filtrar.btn:hover {
  background-color: #a07e4c00;
  color: black;
}

.back.btn {
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
  margin-top: 10px;
  margin-left: 20px;
}

.back.btn:hover {
  background-color: #a07e4c00;
  color: black;
}
</style>
