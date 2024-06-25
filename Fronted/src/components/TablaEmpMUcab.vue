<template>
  <div>
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
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(emp, index) in empleados" :key="index" style="text-align: center">
          <td>{{ emp.name }}</td>
          <td>{{ emp.lastName }}</td>
          <td>{{ emp.dni }}</td>
          <td>{{ emp.job }}</td>
          <td>
            <button
              class="modificar btn"
              @click="saveIdDltPro(pro.id)"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
            >
              Eliminar
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
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(empF, index) in empListfind" :key="index" style="text-align: center">
          <td>{{ empF.name }}</td>
          <td>{{ empF.lastName }}</td>
          <td>{{ empF.dni }}</td>
          <td>{{ empF.job }}</td>
          <td>
            <button
              class="modificar btn"
              @click="saveIdDltPro(empF.id)"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
            >
              Eliminar
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <div
      class="modal fade"
      id="ConfirmarEliminar"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3>¿Quieres Eliminar Este Empleado?</h3>
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
                <div class="col d-flex justify-content-end">
                  <button class="cancelar btn" data-bs-dismiss="modal">Cancelar</button>
                  <button class="confirmar btn" data-bs-dismiss="modal" @click="deleteProyecto">
                    Confirmar
                  </button>
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
import { ref } from 'vue'

let idEmpD = ref(0)

const props = defineProps({
  empleados: {
    required: true
  },
  empListfind: {
    required: false
  }
})

const emit = defineEmits(['dltEmp'])
const deleteProyecto = () => {
  emit('dltEmp', idEmpD.value)
}

const saveIdDltPro = (id) => {
  idEmpD.value = id
}
</script>

<style scoped>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

.confirmar.btn {
  font-size: 10px;
  background-color: #433de5;
  color: white;
}

.confirmar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}

.cancelar.btn {
  margin-right: 10px;
  font-size: 10px;
  background-color: #7d8e87;
  color: white;
}

.cancelar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}
</style>
