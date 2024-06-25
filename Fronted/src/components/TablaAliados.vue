<template>
  <div>
    <table
      v-show="aliadosFiltered.length == 0"
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Aliado</th>
          <th class="tabla Cabecera">Concesión</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(ali, index) in aliados" :key="index" style="text-align: center">
          <td>{{ ali.name }}</td>
          <td>{{ ali.concession }}</td>
          <td>{{ ali.address }}</td>
          <td>
            <button
              class="eliminar btn"
              @click="saveIdEmp(ali.id)"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
            >
              Eliminar
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <table
      v-show="aliadosFiltered.length != 0"
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Aliado</th>
          <th class="tabla Cabecera">Concesión</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(aliF, index) in aliadosFiltered" :key="index" style="text-align: center">
          <td>{{ aliF.name }}</td>
          <td>{{ aliF.concession }}</td>
          <td>{{ aliF.address }}</td>
          <td>
            <button
              class="eliminar btn"
              @click="saveIdEmp(aliF.id)"
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
            <h3>¿Quieres Eliminar Este Aliado?</h3>
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
                  <button class="confirmar btn" data-bs-dismiss="modal" @click="deleteEmpleado">
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

let idEmp = ref(0)

const props = defineProps({
  aliados: {
    required: true
  },

  aliadosFiltered: {
    required: true
  }
})

const emit = defineEmits(['dltAli'])

const saveIdEmp = (id) => {
  idEmp.value = id
}

const deleteEmpleado = () => {
  emit('dltAli', idEmp.value)
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
