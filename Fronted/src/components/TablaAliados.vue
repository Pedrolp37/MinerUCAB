<template>
  <div>
    <table v-show="props.solicitud == true" class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Aliado</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera">Fecha Creación</th>
          <th class="tabla Cabecera">Capital</th>
          <th class="tabla Cabecera">Número de Teléfono</th>
          <th class="tabla Cabecera">Descripción</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(ali, index) in aliados" :key="index" style="text-align: center">
          <td>{{ ali.nombre }}</td>
          <td>{{ ali.direccion }}</td>
          <td>{{ ali.fccreacion }}</td>
          <td>{{ ali.capital }}</td>
          <td>{{ ali.numtelefono }}</td>
          <td>{{ ali.descripcion }}</td>
          <td>
            <button class="seleccionar btn" @click="getAlidoSelected(ali.rif)">Seleccionar</button>
          </td>
        </tr>
      </tbody>
    </table>
    <table
      v-show="aliadosFiltered.length == 0 && props.solicitud == false"
      class="table table-striped"
      id="table"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Aliado</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera">Fecha Creación</th>
          <th class="tabla Cabecera">Capital</th>
          <th class="tabla Cabecera">Número de Teléfono</th>
          <th class="tabla Cabecera">Descripción</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(ali, index) in aliados" :key="index" style="text-align: center">
          <td>{{ ali.nombre }}</td>
          <td>{{ ali.direccion }}</td>
          <td>{{ ali.fccreacion }}</td>
          <td>{{ ali.capital }}</td>
          <td>{{ ali.numtelefono }}</td>
          <td>{{ ali.descripcion }}</td>
          <td>
            <button
              class="eliminar btn"
              @click="saveIdEmp(ali.rif)"
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
      v-show="props.aliadosFiltered.length != 0 && props.solicitud == false"
      class="table table-striped"
      id="table"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Aliado</th>
          <th class="tabla Cabecera">Dirección</th>
          <th class="tabla Cabecera">Fecha Creación</th>
          <th class="tabla Cabecera">Capital</th>
          <th class="tabla Cabecera">Número de Teléfono</th>
          <th class="tabla Cabecera">Descripción</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(aliF, index) in props.aliadosFiltered" :key="index" style="text-align: center">
          <td>{{ aliF.nombre }}</td>
          <td>{{ aliF.direccion }}</td>
          <td>{{ aliF.fccreacion }}</td>
          <td>{{ aliF.capital }}</td>
          <td>{{ aliF.numtelefono }}</td>
          <td>{{ aliF.descripcion }}</td>
          <td>
            <button
              class="eliminar btn"
              @click="saveIdEmp(aliF.rif)"
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

let idAliado = ref(0)

const props = defineProps({
  aliados: {
    required: true
  },

  aliadosFiltered: {
    required: true
  },

  solicitud: {
    required: true
  }
})

const emit = defineEmits(['dltAli', 'aliSelected'])

const saveIdEmp = (id) => {
  idAliado.value = id
}

const getAlidoSelected = (id) => {
  emit('aliSelected', id)
}

const deleteEmpleado = () => {
  emit('dltAli', idAliado.value)
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

.seleccionar.btn {
  margin-right: 10px;
  font-size: 10px;
  background-color: #d06d17;
  color: white;
}

.seleccionar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}
</style>
