<template>
  <div class="container">
    <div class="row">
      <div class="col d-flex justify-content-center">
        <h3>Información del Cliente</h3>
      </div>
    </div>
    <div class="row">
      <div class="col d-flex justify-content-start">
        <div>
          <label for="" class="form-label">Filtrar por Nombre</label>
          <div class="d-flex flex-row justify-content-start">
            <input
              type="text"
              class="form-control"
              id="cantidad"
              v-model="filterName"
              style="margin-right: 8px"
            />
            <button
              class="btn"
              @click="handleClickFilter"
              style="background-color: #fa8f14; color: white"
            >
              Filtrar
            </button>
          </div>
        </div>
      </div>
      <div class="col d-flex justify-content-end">
        <div>
          <button
            class="btn"
            data-bs-toggle="modal"
            data-bs-target="#AñadirCliente"
            style="background-color: #fa8f14; color: white"
          >
            + Añadir nuevo Cliente
          </button>
        </div>

        <!-- Modal -->
        <div
          class="modal fade"
          id="AñadirCliente"
          tabindex="-1"
          aria-labelledby="exampleModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Añadir Cliente</h1>
                <button
                  type="button"
                  class="btn-close"
                  data-bs-dismiss="modal"
                  aria-label="Close"
                ></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <form id="formularioCliente">
                    <div class="mb-3">
                      <label for="nombre" class="form-label">Nombre:</label>
                      <input type="text" class="form-control" id="nombre" v-model="client.name" />
                    </div>

                    <div class="mb-3">
                      <label for="apellido" class="form-label">Apellido:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="apellido"
                        v-model="client.lastName"
                      />
                    </div>

                    <div class="mb-3">
                      <label for="direccion" class="form-label">Dirección:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="direccion"
                        v-model="client.address"
                      />
                    </div>

                    <div class="mb-3">
                      <label for="telefono" class="form-label">Teléfono:</label>
                      <input type="tel" class="form-control" id="telefono" v-model="client.phone" />
                    </div>
                  </form>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                  Cancelar
                </button>
                <button
                  type="button"
                  class="btn btn-primary"
                  @click="addNewClient"
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
    <div class="row" style="margin-top: 10px">
      <div class="FormContainer col d-flex flex-column justify-content-start">
        <div class="formCont d-flex justify-content-center">
          <label for="clientes" class="form-label">Clientes Registrados</label>
        </div>
        <div class="formCont">
          <table class="table table-striped" id="clientes">
            <thead>
              <tr style="text-align: center">
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(elm, index) in subListClients" :key="index" style="text-align: center">
                <td>{{ elm.id }}</td>
                <td>{{ elm.name }}</td>
                <td>{{ elm.lastName }}</td>
                <td v-show="seletedClientList.length == 0">
                  <button @click="getClient(elm)" class="btn">Seleccionar</button>
                </td>
              </tr>
            </tbody>
          </table>
          <div class="d-flex justify-content-center">
            <nav aria-label="Page navigation example" class="">
              <ul class="pagination">
                <li v-show="isBackActive == true" class="page-item" style="margin-right: 10px">
                  <a class="btn page-link" @click="BacksliceListClients">- Back</a>
                </li>
                <li v-show="isNextActive == true" class="page-item">
                  <a class="btn page-link" @click="nextsliceListClients">Next + </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
      <div class="FormContainer col d-flex flex-column justify-content-start">
        <div>
          <div class="formCont d-flex justify-content-center">
            <label for="clientes" class="form-label">Cliente Seleccionado</label>
          </div>
          <div class="formCont">
            <table class="table table-striped">
              <thead>
                <tr style="text-align: center">
                  <th>ID</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                </tr>
              </thead>
              <tbody>
                <tr
                  v-for="(elm, index) in seletedClientList"
                  :key="index"
                  style="text-align: center"
                >
                  <td>{{ elm.id }}</td>
                  <td>{{ elm.name }}</td>
                  <td>{{ elm.lastName }}</td>
                  <td>
                    <button @click="handleClickEliminarClient(index)" class="btn">Eliminar</button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <hr style="margin-top: 50px" />
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="d-flex justify-content-start">
                <h5>Monto total del proyecto = {{ 0 }}</h5>
              </div>
            </div>
          </div>

          <!-- Hay que crear la parte de agregar más métodos de pago -->
          <div class="row">
            <div class="d-flex justify-content-center" style="margin-top: 20px">
              <div>
                <h6>Formas de pago</h6>
              </div>
            </div>
            <div class="col d-flex justify-content-start">
              <div class="input-group mb-3">
                <span
                  class="input-group-text"
                  id="basic-addon1"
                  style="background-color: #757570; color: white"
                  >Monto</span
                >
                <input
                  type="text"
                  class="form-control"
                  placeholder="Introducir Monto"
                  aria-label="Username"
                  aria-describedby="basic-addon1"
                />
              </div>
            </div>
            <div class="col d-flex justify-content-end">
              <div>
                <select
                  class="form-select"
                  aria-label="Default select example"
                  style="background-color: #757570; color: white"
                >
                  <option selected>Método de pago</option>
                  <option value="1">- Efectivo</option>
                  <option value="2">- Cheque</option>
                  <option value="3">- Transferencia</option>
                  <option value="3">- Tarjeta de debito</option>
                  <option value="3">- Tarjeta de crédito</option>
                </select>
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

//Variables revisadas
let clients = ref([])
let subListClients = ref([])
let seletedClientList = ref([])
let client = ref({})
let lListClientAux = ref(0)
let posInicio = ref(0)
let posFinal = ref(10)
let incrementId = ref(1)
let filterName = ref('')
let isNextActive = ref(true)
let isBackActive = ref(false)
const cantDataPag = 10

client.value = {
  name: '',
  lastName: '',
  address: '',
  phone: ''
}

clients.value = [
  {
    id: '1',
    name: 'Arturo',
    lastName: 'Peres',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '2',
    name: 'Wilmer',
    lastName: 'Perez',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '3',
    name: 'Angel',
    lastName: 'Perez',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '4',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '5',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '6',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '7',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '8',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '9',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '10',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '11',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  },
  {
    id: '12',
    name: 'Angel',
    lastName: 'Smith',
    address: 'Wuantanamo',
    phone: '0412654454'
  }
]

//methods Revisados
const getDataClients = (isNextInit, isBack) => {
  let auxList = []
  if (isNextInit) {
    if (lListClientAux.value == 0) {
      if (cantDataPag < clients.value.length) {
        lListClientAux.value += 10
        auxList = clients.value.slice(posInicio.value, posFinal.value)
        posInicio.value += 10
        posFinal.value += 10
        return auxList
      } else if (cantDataPag == clients.value.length) {
        lListClientAux.value += 10
        auxList = clients.value.slice(posInicio.value, posFinal.value)
        posInicio.value += 10
        posFinal.value += 10
        isNextActive.value = false
        return auxList
      } else {
        auxList = clients.value.slice(posInicio.value)
        isNextActive.value = false
        return auxList
      }
    } else if (cantDataPag <= clients.value.length - lListClientAux.value) {
      lListClientAux.value += 10
      auxList = clients.value.slice(posInicio.value, posFinal.value)
      posInicio.value += 10
      posFinal.value += 10
      isBackActive.value = true
      return auxList
    } else {
      auxList = clients.value.slice(posInicio.value)
      isBackActive.value = true
      isNextActive.value = false
      return auxList
    }
  } else if (isBack) {
    if (lListClientAux.value > 10) {
      lListClientAux.value -= 10
      posInicio.value -= 10
      posFinal.value -= 10
      isBackActive.value = true
      isNextActive.value = true
      auxList = clients.value.slice(posInicio.value, posFinal.value)
      return auxList
    } else if (lListClientAux.value == 10) {
      lListClientAux.value = 0
      posInicio.value = 0
      posFinal.value = 10
      isBackActive.value = false
      isNextActive.value = true
      auxList = clients.value.slice(posInicio.value, posFinal.value)
      return auxList
    }
  }
}

const nextsliceListClients = () => {
  subListClients.value = getDataClients(true, false)
}

const BacksliceListClients = () => {
  subListClients.value = getDataClients(false, true)
}

subListClients.value = getDataClients(true, false)

const addNewClient = () => {
  clients.value.push({
    id: incrementId.value,
    name: client.value.name,
    lastName: client.value.lastName,
    address: client.value.address,
    phone: client.value.phone
  })
  client.value.name = ''
  client.value.lastName = ''
  client.value.address = ''
  client.value.phone = ''
  incrementId.value += 1
}

const handleClickEliminarClient = (index) => {
  seletedClientList.value.splice(index)
}

const getClient = (elm) => {
  seletedClientList.value.push({
    id: elm.id,
    name: elm.name,
    lastName: elm.lastName,
    address: elm.address,
    phone: elm.phone
  })
}

const handleClickFilter = () => {
  subListClients.value = clients.value.filter((elm) => {
    if (elm.name === filterName.value) {
      return elm
    }
  })
  filterName.value = ''
}
</script>

<style scoped>
label .form-label {
  color: #86822f;
  font-size: 15px;
}

div .formCont {
  margin: 8px;
}

td .btn {
  background-color: #fa8f14;
  color: white;
  font-size: 10px;
}

.FormContainer {
  border: solid 1px #c4cbc7;
  border-radius: 15px;
  margin: 8px;
}
</style>
