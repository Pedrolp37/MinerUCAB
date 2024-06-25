<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 80px">
        <div class="col-6 d-flex justify-content-start">
          <h3 style="color: #a57844">Clientes Registrados</h3>
        </div>
        <div class="col-6 d-flex justify-content-end">
          <button class="agregar btn" data-bs-toggle="modal" data-bs-target="#AgregarCliente">
            <i class="bi bi-plus-circle"></i> Agregar Cliente
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
            :placeholder="'Introducir Cliente'"
            v-model="findCliente"
          />
          <button class="filtrarA btn" @click="getClientesFiltered">Filtrar Cliente</button>
          <button v-if="clienteFiltered.length != 0" class="showAll btn" @click="showAllCli">
            Volver
          </button>
        </div>
      </div>
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaClientes
            :clientes="clientes"
            :clienteFiltered="clienteFiltered"
            @dltCli="deleteCliente"
          />
        </div>
      </div>
      <div
        class="modal fade"
        id="AgregarCliente"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Cliente</h1>
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
                    <label for="direccion" class="label form-label">DNI:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="direccion"
                      autocomplete="off"
                      :placeholder="'Vxxxxxxxxxxx'"
                      v-model="newCliente.dni"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Nombre:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newCliente.name"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="apellido" class="label form-label">Apellido:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="apellido"
                      autocomplete="off"
                      v-model="newCliente.lastName"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="direccion" class="label form-label">Teléfono:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="direccion"
                      autocomplete="off"
                      v-model="newCliente.numphone"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="direccion" class="label form-label">Dirección:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="direccion"
                      autocomplete="off"
                      v-model="newCliente.address"
                    />
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="cancelar btn" data-bs-dismiss="modal">Cancelar</button>
                <button
                  type="button"
                  class="guardar btn"
                  @click="guardarCliente"
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
import { onMounted, ref } from 'vue'
import TablaClientes from '../../components/TablaClientes.vue'
import NavBarVue from '../../components/NavBar.vue'
import { getClientes } from '../../Services/Clientes/ClientesGet.services'

let clienteFiltered = ref([])
let clientes = ref([])
let newCliente = ref({})
let findCliente = ref('')

newCliente.value = {
  dni: '',
  name: '',
  lastname: '',
  numphone: '',
  address: ''
}

/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getClientes().then((Response) => (clientes.value = Response.data))
})

const getClientesFiltered = () => {
  clienteFiltered.value = clientes.value.filter((elm) => elm.name == findCliente.value)
  findCliente.value = ''
}

const guardarCliente = () => {
  clientes.value.push({
    id: 3,
    name: newCliente.value.name,
    lastName: newCliente.value.lastName,
    dni: newCliente.value.dni
  })

  newCliente.value.name = ''
  newCliente.value.lastName = ''
  newCliente.value.dni = ''
}

const showAllCli = () => {
  clienteFiltered.value = []
}

const deleteCliente = (dni) => {
  clientes.value.splice(
    clientes.value.findIndex((elm) => elm.dni == dni),
    1
  )
  showAllEmp()
}
</script>

<style scoped>
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
