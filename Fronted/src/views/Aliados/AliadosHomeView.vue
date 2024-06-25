<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col-6 d-flex justify-content-start">
          <h3 style="color: #a57844">Aliados Registrados</h3>
        </div>
        <div class="col-6 d-flex justify-content-end">
          <button class="agregar btn" data-bs-toggle="modal" data-bs-target="#AgregarAliado">
            <i class="bi bi-plus-circle"></i> Agregar Aliado
          </button>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 40px">
        <div class="col-3">
          <input
            type="text"
            class="input form-control"
            aria-label="Username"
            aria-describedby="basic-addon1"
            :placeholder="'Introducir Aliado'"
            v-model="findAliado"
          />
          <button class="filtrarA btn" @click="getAliadoFiltered">Filtrar Aliado</button>
          <button v-if="aliadosFiltered.length != 0" class="showAll btn" @click="showAllAli">
            Volver
          </button>
        </div>
      </div>
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaAliados
            :aliados="aliados"
            :aliadosFiltered="aliadosFiltered"
            @dltAli="deleteAliado"
          />
        </div>
      </div>
      <div
        class="modal fade"
        id="AgregarAliado"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Aliado</h1>
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
                      autocomplete="off"
                      v-model="newAliado.name"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="apellido" class="label form-label">Concesión:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="apellido"
                      autocomplete="off"
                      v-model="newAliado.concession"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="direccion" class="label form-label">Dirección:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="direccion"
                      autocomplete="off"
                      v-model="newAliado.address"
                    />
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="cancelar btn" data-bs-dismiss="modal">Cancelar</button>
                <button
                  type="button"
                  class="guardar btn"
                  @click="guardarAliado"
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
  </div>
</template>

<script setup>
import { ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaAliados from '../../components/TablaAliados.vue'

let findAliado = ref('')
let aliados = ref([])
let aliadosFiltered = ref([])
let newAliado = ref({})

newAliado.value = {
  name: '',
  concession: '',
  address: ''
}

aliados.value = [
  {
    id: 1,
    name: 'Felper',
    concession: 'Oro',
    address: 'China'
  },
  {
    id: 2,
    name: 'Los Arabitos',
    concession: 'Plata',
    address: 'Achaguas'
  }
]

const guardarAliado = () => {
  aliados.value.push({
    id: 3,
    name: newAliado.value.name,
    concession: newAliado.value.concession,
    address: newAliado.value.address
  })

  newAliado.value.name = ''
  newAliado.value.concession = ''
  newAliado.value.address = ''
}

const getAliadoFiltered = () => {
  aliadosFiltered.value = aliados.value.filter((elm) => elm.name == findAliado.value)
  findAliado.value = ''
}

const showAllAli = () => {
  aliadosFiltered.value = []
}

const deleteAliado = (id) => {
  aliados.value.splice(
    aliados.value.findIndex((elm) => elm.id == id),
    1
  )
  showAllEmp()
}
</script>

<style scoped>
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

.agregar.btn {
  background-color: #fa8f14;
  color: white;
}

.agregar.btn:hover {
  background-color: #fa8f1400;
  color: black;
}

.filtrarA.btn {
  margin-top: 10px;
  background-color: #999981;
  color: white;
}

.filtrar.btn:hover {
  background-color: #fa8f1400;
  color: black;
}

.showAll.btn {
  margin-top: 10px;
  margin-left: 20px;
  background-color: #999981;
  color: white;
}

.showAll.btn:hover {
  background-color: #fa8f1400;
  color: black;
}
</style>
