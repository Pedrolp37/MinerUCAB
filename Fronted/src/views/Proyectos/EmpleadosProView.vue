<template>
  <div class="body container">
    <div class="row" style="margin: 40px">
      <div class="col d-flex justify-content-start">
        <h3 style="color: #a57844">Empleados</h3>
      </div>
    </div>
    <div class="row">
      <div class="pCrearP col-3">
        <button class="pCrearP btn" @click="handleClickOption('etapa1')" :style="{}">
          MinerUcab
        </button>
      </div>
      <div class="pCrearP col-3">
        <button class="pCrearP btn" @click="handleClickOption('etapa2')" :style="{}">
          Tercearios
        </button>
      </div>
    </div>
    <hr />
    <div class="row" style="margin-top: 40px">
      <div class="col-4">
        <div>
          <div class="input-group">
            <input
              type="text"
              class="form-control"
              aria-label="Username"
              aria-describedby="basic-addon1"
              v-model="findEmp"
            />
            <select class="form-select" aria-label="Default select example" v-model="typeSearch">
              <option selected>Buscar por</option>
              <option value="nombre">Nombre</option>
              <option value="dni">DNI</option>
              <option value="cargo">Cargo</option>
            </select>
          </div>
        </div>
        <div>
          <button class="buscar btn" @click="filterEmployee">Filtrar Empleado</button>
          <button
            v-if="empListfind.length != 0"
            class="buscar btn"
            @click="showAllEmp"
            style="margin-left: 30px"
          >
            Volver
          </button>
        </div>
      </div>
    </div>
    <div class="row" style="margin-top: 40px">
      <div class="col d-flex justify-content-center">
        <table
          v-show="empListfind.length == 0"
          class="table table-striped"
          id="table"
          style="width: 60vw"
        >
          <thead>
            <tr style="text-align: center">
              <th class="tabla Cabecera">Nombre</th>
              <th class="tabla Cabecera">Apellido</th>
              <th class="tabla Cabecera">DNI</th>
              <th class="tabla Cabecera">Cargo</th>
              <th class="tabla Cabecera">N- Actividades</th>
              <th class="tabla Cabecera"></th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(elm, index) in props.empAsigPro" :key="index" style="text-align: center">
              <td>{{ elm.name }}</td>
              <td>{{ elm.lastName }}</td>
              <td>{{ elm.dni }}</td>
              <td>{{ elm.job }}</td>
              <td>{{ elm.activity.length }}</td>
              <td>
                <button
                  @click="getDetalleEmp(elm)"
                  data-bs-toggle="modal"
                  data-bs-target="#detalleEmpleado"
                  style="background-color: #fa8f14; color: white"
                  class="btn"
                >
                  Detalle
                </button>
              </td>
            </tr>
          </tbody>
        </table>
        <table v-show="empListfind != 0" class="table table-striped" id="table" style="width: 60vw">
          <thead>
            <tr style="text-align: center">
              <th class="tabla Cabecera">Nombre</th>
              <th class="tabla Cabecera">Apellido</th>
              <th class="tabla Cabecera">DNI</th>
              <th class="tabla Cabecera">Cargo</th>
              <th class="tabla Cabecera">N- Actividades</th>
              <th class="tabla Cabecera"></th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(elm, index) in empListfind" :key="index" style="text-align: center">
              <td>{{ elm.name }}</td>
              <td>{{ elm.lastName }}</td>
              <td>{{ elm.dni }}</td>
              <td>{{ elm.job }}</td>
              <td>{{ elm.activity.length }}</td>
              <td>
                <button
                  @click="getDetalleEmp(elm)"
                  data-bs-toggle="modal"
                  data-bs-target="#detalleEmpleado"
                  style="background-color: #fa8f14; color: white"
                  class="btn"
                >
                  Detalle
                </button>
              </td>
            </tr>
          </tbody>
        </table>
        <div
          class="modal fade"
          id="detalleEmpleado"
          tabindex="-1"
          aria-labelledby="exampleModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Detalle Empleado</h1>
                <button
                  type="button"
                  class="btn-close"
                  data-bs-dismiss="modal"
                  aria-label="Close"
                ></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <div class="row">
                    <div class="col">
                      <h6>DNI: {{ empSelect.dni }}</h6>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <h6>Nombre: {{ empSelect.name }}</h6>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <h6>Apellido: {{ empSelect.lastName }}</h6>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <h6>Cargo: {{ empSelect.job }}</h6>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col">
                      <h6>Actividades asignadas:</h6>
                      <table class="table table-striped" id="table">
                        <thead>
                          <tr style="text-align: center">
                            <th style="font-size: 14px; color: #938e8e">Actividades</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr
                            v-for="(elm, index) in empSelect.activity"
                            :key="index"
                            style="text-align: center"
                          >
                            <td style="font-size: 12px">{{ elm }}</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import NavBarVue from '../../components/NavBar.vue'
import { ref } from 'vue'

let typeSearch = ref('Buscar por')
let findEmp = ref('')
let empSelect = ref([])
let empListfind = ref([])

const props = defineProps({
  empAsigPro: {
    type: {},
    required: false
  }
})

const getDetalleEmp = (elm) => {
  empSelect.value = {
    name: elm.name,
    lastName: elm.lastName,
    dni: elm.dni,
    job: elm.job,
    activity: elm.activity
  }
}

const showAllEmp = () => {
  empListfind.value = []
}

const filterEmployee = () => {
  switch (typeSearch.value) {
    case 'cargo':
      empListfind.value = props.empAsigPro.filter((elm) => {
        if (elm.job === findEmp.value) {
          return elm
        }
      })
      findEmp.value = ''
      typeSearch.value = 'Buscar por'
      break
    case 'nombre':
      empListfind.value = props.empAsigPro.filter((elm) => {
        if (elm.name === findEmp.value) {
          return elm
        }
      })
      findEmp.value = ''
      typeSearch.value = 'Buscar por'
      break
    case 'dni':
      empListfind.value = props.empAsigPro.filter((elm) => {
        if (elm.dni === findEmp.value) {
          return elm
        }
      })
      findEmp.value = ''
      typeSearch.value = 'Buscar por'
      break
  }
}
</script>

<style scoped>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

.buscar.btn {
  background-color: #999981;
  color: white;
  margin-top: 20px;
}
.buscar.btn:hover {
  background-color: #de9b1e;
}

.body.container {
  height: 100vh;
}

.pCrearP {
  font-size: 18px;
  font-weight: bold;
}

.form-label {
  color: #30302c;
  font-size: 15px;
}

.form-control {
  border: solid 1px #859a9c;
  border-radius: 10px;
}

.form-select {
  background-color: #999981;
  color: white;
  border-radius: 10px;
}

hr {
  margin: auto;
}
</style>
