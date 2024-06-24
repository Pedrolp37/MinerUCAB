<template>
  <div>
    <table v-show="props.proFiltered.length == 0" class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tableCabecera">Proyecto</th>
          <th class="tableCabecera">Estatus</th>
          <th class="tableCabecera">Opciones</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(pro, index) in props.proyectos" :key="index" style="text-align: center">
          <td>{{ pro.name }}</td>
          <td>{{ pro.status }}</td>
          <td>
            <button class="modificar btn" @click="deleteProyecto(pro.id)">Eliminar</button>
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
          <th class="tableCabecera">Proyecto</th>
          <th class="tableCabecera">Estatus</th>
          <th class="tableCabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(proF, index) in props.proFiltered" :key="index" style="text-align: center">
          <td>{{ proF.name }}</td>
          <td>{{ proF.status }}</td>
          <td>
            <button class="modificar btn" @click="deleteProyecto(pro.id)">Eliminar</button>
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

const props = defineProps({
  proyectos: {
    required: true
  },
  proFiltered: {
    required: false
  }
})

const emit = defineEmits(['dltPro', 'mDPro'])
const deleteProyecto = (id) => {
  emit('dltPro', id)
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
.tableCabecera {
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
