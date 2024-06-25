<template>
  <div>
    <table
      v-show="clienteFiltered.length == 0"
      class="table table-striped"
      id="table"
      style="width: 80vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">DNI</th>
          <th class="tabla Cabecera">Nombre</th>
          <th class="tabla Cabecera">Apellido</th>
          <th class="tabla Cabecera">Teléfono</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(cli, index) in clientes" :key="index" style="text-align: center">
          <td>{{ cli.dni }}</td>
          <td>{{ cli.name }}</td>
          <td>{{ cli.lastname }}</td>
          <td>{{ cli.numphone }}</td>
          <td>{{ cli.address }}</td>
          <td>
            <button
              class="eliminar btn"
              @click="saveidCliD(cli.dni)"
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
      v-show="clienteFiltered.length != 0"
      class="table table-striped"
      id="table"
      style="width: 80vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">DNI</th>
          <th class="tabla Cabecera">Nombre</th>
          <th class="tabla Cabecera">Apellido</th>
          <th class="tabla Cabecera">Teléfono</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(cliF, index) in clienteFiltered" :key="index" style="text-align: center">
          <td>{{ cliF.dni }}</td>
          <td>{{ cliF.name }}</td>
          <td>{{ cliF.lastname }}</td>
          <td>{{ cliF.numphone }}</td>
          <td>{{ cliF.address }}</td>
          <td>
            <button
              class="eliminar btn"
              @click="saveidCliD(cliF.dni)"
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
            <h3>¿Quieres Eliminar Este Cliente?</h3>
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
                  <button class="confirmar btn" data-bs-dismiss="modal" @click="deleteCliente">
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

let idCliD = ref(0)

const props = defineProps({
  clientes: {
    required: true
  },

  clienteFiltered: {
    required: true
  }
})

const emit = defineEmits(['dltCli'])

const saveidCliD = (id) => {
  idCliD.value = id
}

const deleteCliente = () => {
  emit('dltCli', idCliD.value)
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
