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
      <div class="row" style="margin: 40px">
        <div class="col-4 d-flex">
          <select class="form-select" aria-label="Default select example" v-model="statusOption">
            <option selected>Seleccionar Estatus:</option>
            <option value="nombre">Nombre</option>
            <option value="dni">DNI</option>
            <option value="cargo">Cargo</option>
          </select>
          <button class="filtrar btn">Filtrar</button>
        </div>
      </div>
      <div class="row" style="margin: 80px">
        <TablaProyectos
          :proyectos="proyectos"
          :proFiltered="getProFiltered()"
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
    status: 'Pendiente'
  }
]

const getProFiltered = () => {
  let proFiltered = []
  return proFiltered

  //Esto realmente es un switch para poder filtrar y retornar el array nuevo con los datos filtrados
}

const deleteProyecto = (id) => {
  
  proyectos.value.splice(proyectos.value.findIndex(elm => elm.id == id))
}

const modifyProyecto = (data) => {
  proyectos.value.forEach(elm => {
    if(elm.id == data.id){
      elm.name = data.name
      elm.status = data.status
    }
  });
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
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
}

.filtrar.btn:hover {
  background-color: #a07e4c00;
  color: black;
}
</style>
