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
                    <label for="nombre" class="label form-label">RIF:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      :placeholder="'Jxxxxxxxxxxx'"
                      v-model="newAliado.rif"
                    />
                  </div>
                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Nombre:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newAliado.nombre"
                    />
                  </div>
                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Dirección:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newAliado.direccion"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Fecha de Creación:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newAliado.fcCreacion"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Capital:</label>
                    <input
                      type="number"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newAliado.capital"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Número de Teléfono:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newAliado.numTelefono"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Descripción:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      autocomplete="off"
                      v-model="newAliado.descripcion"
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
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaAliados from '../../components/TablaAliados.vue'
import { getAliados } from '../../Services/Aliados/AliadosGet.services'

/*

* VARIABLES

*/
let findAliado = ref('')
let aliados = ref([])
let aliadosFiltered = ref([])
let newAliado = ref({})

newAliado.value = {
  rif: '',
  nombre: '',
  direccion: '',
  fcCreacion: '',
  capital: 0,
  numTelefono: '',
  descripcion: ''
}

/*

 * CONSUMO DE LA API

 */

onMounted(async () => {
  getAliados().then((Response) => (aliados.value = Response.data))
})

/*

* MÉTODOS(FUNCIONES)

*/

const guardarAliado = () => {
  aliados.value.push({
    rif: 'J1250001241',
    nombre: newAliado.value.nombre,
    direccion: newAliado.value.direccion,
    fcCreacion: newAliado.value.fcCreacion,
    capital: newAliado.value.capital,
    numTelefono: newAliado.value.numTelefono,
    descripcion: newAliado.value.descripcion
  })

  newAliado.value.nombre = ''
  newAliado.value.direccion = ''
  newAliado.value.fcCreacion = ''
  newAliado.value.capital = 0
  newAliado.value.numTelefono = ''
  newAliado.value.descripcion = ''
}

const getAliadoFiltered = () => {
  aliadosFiltered.value = aliados.value.filter((elm) => elm.nombre == findAliado.value)
  findAliado.value = ''
}

const showAllAli = () => {
  aliadosFiltered.value = []
}

const deleteAliado = (rif) => {
  aliados.value.splice(
    aliados.value.findIndex((elm) => elm.rif == rif),
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
