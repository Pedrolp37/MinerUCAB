<template>
  <div>
    <table v-show="props.proFiltered.length == 0" class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Proyecto</th>
          <th class="tabla Cabecera">Estatus</th>
          <th class="tabla Cabecera">Opciones</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(pro, index) in props.proyectos" :key="index" style="text-align: center">
          <td>{{ pro.name }}</td>
          <td>{{ pro.status }}</td>
          <td>
            <button
              class="modificar btn"
              @click="saveIdDltPro(pro.id)"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
            >
              Eliminar
            </button>
            |
            <button
              class="modificar btn"
              @click="saveIdProM(pro.id)"
              data-bs-toggle="modal"
              data-bs-target="#detalleEmpleado"
            >
              Modificar
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <table v-show="props.proFiltered.length != 0" class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Proyecto</th>
          <th class="tabla Cabecera">Estatus</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(proF, index) in props.proFiltered" :key="index" style="text-align: center">
          <td>{{ proF.name }}</td>
          <td>{{ proF.status }}</td>
          <td>
            <button
              class="modificar btn"
              @click="saveIdDltPro(pro.id)"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
            >
              Eliminar
            </button>
            |
            <button
              class="modificar btn"
              @click="saveIdProM(proF.id)"
              data-bs-toggle="modal"
              data-bs-target="#detalleEmpleado"
            >
              Modificar
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
            <h3>¿Quieres Eliminar Este Proyecto?</h3>
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
            <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Proyecto</h1>
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
                  <label for="nombre" class="form-label">Nombre Proyecto:</label>
                  <input type="text" class="form-control" id="nombre" v-model="newNamePro" />
                </div>
              </div>
              <div class="row" style="margin-top: 20px; margin-bottom: 8rem">
                <div class="col-8">
                  <label for="nombre" class="form-label">Estatus Proyecto:</label>
                  <select
                    class="form-select"
                    aria-label="Default select example"
                    v-model="newStatusPro"
                  >
                    <option selected>Elegir Estatus:</option>
                    <option value="Pendiente">Pendiente</option>
                    <option value="Proceso">Proceso</option>
                    <option value="Terminado">Terminado</option>
                    <option value="Atrasado">Atrasado</option>
                  </select>
                </div>
              </div>
              <hr />
              <div class="row">
                <div class="col d-flex justify-content-end">
                  <button class="guardar btn" data-bs-dismiss="modal" @click="saveChangesPro">
                    Guardar Cambios
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

let newNamePro = ref('')
let newStatusPro = ref('Elegir Estatus:')
let idProM = ref(0)
let idProD = ref(0)

const props = defineProps({
  proyectos: {
    required: true
  },
  proFiltered: {
    required: false
  }
})

const emit = defineEmits(['dltPro', 'mDPro'])
const deleteProyecto = () => {
  emit('dltPro', idProD.value)
}

const saveIdDltPro = (id) => {
  idProD.value = id
}

const saveIdProM = (id) => {
  idProM.value = id
}

const saveChangesPro = () => {
  emit('mDPro', {
    id: idProM.value,
    name: newNamePro.value,
    status: newStatusPro.value
  })

  idProM.value = 0
  newNamePro.value = ''
  newStatusPro.value = 'Elegir Estatus:'
}
</script>

<style scoped>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

.modificar.btn {
  background-color: #fa8f14;
  color: white;
}

.modificar.btn:hover {
  background-color: #fa8f1400;
  color: black;
}

.guardar.btn {
  background-color: #695844;
  color: white;
}

.guardar.btn:hover {
  background-color: #fa8f1400;
  color: black;
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

.form-label {
  color: #86822f;
  font-size: 15px;
}

.form-select {
  background-color: #a07e4c;
  color: white;
  border-radius: 10px;
}
</style>
