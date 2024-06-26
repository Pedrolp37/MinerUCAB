<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-start">
          <h3 class="EmpleadosTitle">Empleados</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <button class="aggEmpleado btn" data-bs-toggle="modal" data-bs-target="#AgregarEmpleado">
            <i class="bi bi-plus-circle"></i> Agregar Empleado
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
                class="input form-control"
                aria-label="Username"
                aria-describedby="basic-addon1"
                v-model="findEmp"
              />
              <select
                class="option form-select"
                aria-label="Default select example"
                v-model="typeSearch"
              >
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
          <TablaEmpMUcab
            :empleados="empleados"
            :empListfind="empListfind"
            @dltEmp="deleteEmpleado"
          />
        </div>
      </div>
    </div>
    <div
      class="modal fade"
      id="AgregarEmpleado"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Empleado</h1>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div class="container">
              <form id="formularioEmpleados">
                <div class="mb-3">
                  <label for="nombre" class="label form-label">Nombre:</label>
                  <input
                    type="text"
                    class="form-control"
                    id="nombre"
                    v-model="newEmpleado.name"
                    autocomplete="off"
                  />
                </div>

                <div class="mb-3">
                  <label for="apellido" class="label form-label">Apellido:</label>
                  <input
                    type="text"
                    class="form-control"
                    id="apellido"
                    autocomplete="off"
                    v-model="newEmpleado.lastName"
                  />
                </div>

                <div class="mb-3">
                  <label for="direccion" class="label form-label">DNI:</label>
                  <input
                    type="text"
                    class="form-control"
                    id="direccion"
                    autocomplete="off"
                    v-model="newEmpleado.dni"
                  />
                </div>

                <div class="mb-3">
                  <label for="direccion" class="label form-label">Numero de Teléfono:</label>
                  <input
                    type="text"
                    class="form-control"
                    id="direccion"
                    autocomplete="off"
                    v-model="newEmpleado.numPhone"
                  />
                </div>

                <div class="mb-3">
                  <label for="direccion" class="label form-label">Dirección:</label>
                  <input
                    type="text"
                    class="form-control"
                    id="direccion"
                    autocomplete="off"
                    v-model="newEmpleado.addres"
                  />
                </div>

                <div class="mb-3">
                  <label for="telefono" class="label form-label">Cargo:</label>
                  <select
                    class="cargo form-select"
                    aria-label="Default select example"
                    v-model="newEmpleado.job"
                  >
                    <option v-for="(option, index) in cargo" :key="index" :value="option.id">
                      {{ option.nombre }}
                    </option>
                  </select>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="cancelar btn" data-bs-dismiss="modal">Cancelar</button>
              <button
                type="button"
                class="guardar btn"
                @click="guardarEmpleado"
                data-bs-dismiss="modal"
              >
                Añadir
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaEmpMUcab from '../../components/TablaEmpMUcab.vue'
import { getEmpleados } from '../../Services/Empleados/EmpleadosGet.services.js'

/*

* VARIABLES

*/
let empleados = ref([])
let newEmpleado = ref({})
let empListfind = ref([])
let typeSearch = ref('Buscar por')
let findEmp = ref('')
let cargo = ref([])

newEmpleado.value = {
  name: '',
  lastname: '',
  numphone: '',
  address: '',
  dni: '',
  job: ''
}

cargo.value = empleados.value.job

/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getEmpleados().then((Response) => {
    empleados.value = Response.data
    console.log(empleados.value)
  })
})

/*

* MÉTODOS(FUNCIONES)

*/

const guardarEmpleado = () => {
  let job = ''

  cargo.value.forEach((elm) => {
    if (elm.id == newEmpleado.value.job) {
      job = elm.nombre
    }
  })

  empleados.value.push({
    name: newEmpleado.value.name,
    lastName: newEmpleado.value.lastName,
    dni: newEmpleado.value.dni,
    numPhone: newEmpleado.value.numPhone,
    addres: newEmpleado.value.addres,
    job: job
  })

  newEmpleado.value.name = ''
  newEmpleado.value.lastName = ''
  newEmpleado.value.dni = ''
  newEmpleado.value.job = ''
  newEmpleado.value.addres = ''
  newEmpleado.value.numPhone = ''
}

const showAllEmp = () => {
  empListfind.value = []
}

const filterEmployee = () => {
  switch (typeSearch.value) {
    case 'cargo':
      empListfind.value = empleados.value.filter((elm) => {
        if (elm.job === findEmp.value) {
          return elm
        }
      })
      findEmp.value = ''
      typeSearch.value = 'Buscar por'
      break
    case 'nombre':
      empListfind.value = empleados.value.filter((elm) => {
        if (elm.name === findEmp.value) {
          return elm
        }
      })
      findEmp.value = ''
      typeSearch.value = 'Buscar por'
      break
    case 'dni':
      empListfind.value = empleados.value.filter((elm) => {
        if (elm.dni === findEmp.value) {
          return elm
        }
      })
      findEmp.value = ''
      typeSearch.value = 'Buscar por'
      break
  }
}

const deleteEmpleado = (dni) => {
  empleados.value.splice(
    empleados.value.findIndex((elm) => elm.dni == dni),
    1
  )
  showAllEmp()
}
</script>

<style scope>
.cargo.form-select {
  background-color: #999981;
  color: white;
}

.label.form-label {
  color: #86822f;
  font-size: 15px;
}

.guardar.btn {
  font-size: 15px;
  background-color: #433de5;
  color: white;
}

.guardar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}

.cancelar.btn {
  margin-right: 10px;
  font-size: 15px;
  background-color: #7d8e87;
  color: white;
}

.cancelar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}

.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

.EmpleadosTitle {
  color: #a57844;
}

.aggEmpleado.btn {
  background-color: #fa8f14;
  color: white;
}

.aggEmpleado.btn:hover {
  background-color: #fa8f1400;
  color: black;
}

.buscar.btn {
  background-color: #999981;
  color: white;
  margin-top: 20px;
}
.buscar.btn:hover {
  background-color: #de9b1e;
}

.input.form-control {
  border: solid 1px #859a9c;
  border-radius: 10px;
}

.option.form-select {
  background-color: #999981;
  color: white;
  border-radius: 10px;
}
</style>
