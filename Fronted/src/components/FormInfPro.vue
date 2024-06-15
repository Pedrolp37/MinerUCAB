<template>
  <div class="container">
    <div class="row">
      <div class="col d-flex justify-content-center">
        <h3>Información del Proyecto</h3>
      </div>
    </div>
    <div class="row">
      <div class="formContainer col d-flex  justify-content-start flex-column">
        <div class="formCont">
          <label for="minerales" class="form-label" >Tipo de Mineral</label>
          <select class="form-select" id="minerales" aria-label="Default select example" v-model="mineral">
            <option >seleccionar mineral</option>
            <option v-for="(min, index) in minerales" :key="index" :value="min.mineral">{{min.mineral}}</option>
          </select>
        </div>
        <div class="formCont">
          <label for="cantidad" class="form-label" >Cantidad a Explotar</label>
          <input type="number" class="form-control" id="cantidad" :placeholder="cantExplotar" v-model="cantExplotar">
        </div>
      </div>
      <div class="formContainer col d-flex  justify-content-start flex-column">
        <div class="formCont" >
          <label for="" class="form-label">Pozos Disponibles</label>
          <table class="table table-striped">
          <thead>
            <tr style="text-align:center">
              <th>ID</th>
              <th>Capacidad Máxima </th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(elm,index) in pozos" :key="index" style="text-align:center">
              <td>{{elm.id}}</td>
              <td>{{elm.capacidad}}</td>
              <td v-show="pozo.length == 0"><button @click="handleClickGetPozo(elm)" class="btn">Seleccionar</button></td>
            </tr>
          </tbody>
        </table>
        </div>
        <div class="formCont">
          <label for="" class="form-label">Pozo Seleccionado</label>
          <table class="table table-striped">
          <thead>
            <tr style="text-align:center">
              <th>ID</th>
              <th>Capacidad Máxima </th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(elm,index) in pozo" :key="index" style="text-align:center">
              <td>{{elm.id}}</td>
              <td >{{elm.capacidad}}</td>
              <td><button @click="handleClickEliminarPozo(index)" class="btn">Eliminar</button></td>
            </tr>
          </tbody>
        </table>
        </div>
      </div>    
    </div>
  </div>
</template>

<script setup>
import {ref} from 'vue'
import { loadRouteLocation } from 'vue-router'

let pozos = ref([])
let pozo = ref([])
let minerales = ref([])
let mineral = ref('')
let cantExplotar = ref(0)
mineral.value = "seleccionar mineral"

pozos.value = [
  {
    id: "123456",
    capacidad: 20
  },
  {
    id: "1234786",
    capacidad: 50
  }
]

minerales.value = [
  {
    mineral: "oro"
  },
  {
    mineral: "plata"
  },
  {
    mineral: "carbon"
  },
]


//Methods
const handleClickGetPozo = (elm) => {
  pozo.value.push(elm)
}

const handleClickEliminarPozo = (index) => {
  pozo.value.splice(index)
}

</script>

<style scope>
td .btn{
  background-color: #fa8f14;
  color: white;
  font-size: 10px;
}

div .formContainer{
  border: solid 1px #C4CBC7;
  border-radius: 15px;
  margin: 8px;
}

div .formCont{
  margin: 8px;
}

.form-label{
  color: #86822F;
  font-size: 15px;
}
</style>
