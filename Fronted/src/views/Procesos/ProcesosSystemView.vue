<template>
  <div>
    <NavBarVue />
    <div class="container">
      <div class="row" style="margin-top: 70px">
        <div class="col d-flex justify-content-start">
          <h3 style="color: #a57844">Procesos</h3>
        </div>
        <div class="col d-flex justify-content-end">
          <button class="addMin btn" data-bs-toggle="modal" data-bs-target="#AgregarMineral">
            Agregar Mineral <i class="bi bi-plus-circle"></i>
          </button>
        </div>
      </div>
      <hr />
      <div class="row" style="margin-top: 30px">
        <div class="col-4 d-flex flex-column justify-content-start">
          <div>
            <div class="input-group">
              <input
                type="text"
                class="input form-control"
                aria-label="Username"
                aria-describedby="basic-addon1"
                v-model="findMineral"
              />
              <button class="filtrar btn" @click="filterMineral">
                Filtrar Mineral <i class="bi bi-search"></i>
              </button>
            </div>
          </div>
          <div>
            <button
              v-show="filteredMineralsList.length != 0"
              class="filtrar btn"
              @click="showAllMinerals"
              style="margin-top: 30px"
            >
              Volver
            </button>
          </div>
        </div>
      </div>
      <div class="row" style="margin-top: 80px">
        <div class="col d-flex justify-content-center">
          <TablaMinerales
            :minerals="mineralsList"
            :filteredMinerals="filteredMineralsList"
            @dltMineral="getidDeleteMin"
            @modMineral="getMinPut"
          />
        </div>
      </div>
      <div
        class="modal fade"
        id="AgregarMineral"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Agregar Mineral</h1>
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
                    <label for="nombre" class="label form-label">Mineral:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      v-model="newMineral.nombre"
                      autocomplete="off"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Fórmula Química:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="nombre"
                      v-model="newMineral.form_quimica"
                      autocomplete="off"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Dureza:</label>
                    <input
                      type="number"
                      class="form-control"
                      id="nombre"
                      v-model="newMineral.dureza"
                      autocomplete="off"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="nombre" class="label form-label">Pureza Ideal:</label>
                    <input
                      type="number"
                      class="form-control"
                      id="nombre"
                      v-model="newMineral.pur_ideal"
                      autocomplete="off"
                    />
                  </div>

                  <div class="mb-3">
                    <label for="telefono" class="label form-label">Tipo de Mineral:</label>
                    <select
                      class="cargo form-select"
                      aria-label="Default select example"
                      v-model="newMineral.tipomineral"
                    >
                      <option value=""></option>
                      <option value="Metalico">Metalico</option>
                      <option value="No Metalico">No Metalico</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <label for="telefono" class="label form-label">Tipo de Metal:</label>
                    <select
                      class="cargo form-select"
                      aria-label="Default select example"
                      v-model="newMineral.tipometal"
                    >
                      <option value=""></option>
                      <option value="Ferroso">Ferroso</option>
                      <option value="No Ferroso">No Ferroso</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <label for="telefono" class="label form-label">Tipo de Medición:</label>
                    <select
                      class="cargo form-select"
                      aria-label="Default select example"
                      v-model="newMineral.medicion"
                    >
                      <option value=""></option>
                      <option value="Quilates">Quilates</option>
                      <option value="Tonelada Metrica">Tonelada Metrica</option>
                      <option value="Gramos">Gramos</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <label for="telefono" class="label form-label">Maleabilidad:</label>
                    <select
                      class="cargo form-select"
                      aria-label="Default select example"
                      v-model="newMineral.maleabilidad"
                    >
                      <option value=""></option>
                      <option value="Alta">Alta</option>
                      <option value="Media">Media</option>
                      <option value="Baja">Baja</option>
                    </select>
                  </div>

                  <div class="mb-3">
                    <label for="telefono" class="label form-label">Tipo de Aislante:</label>
                    <select
                      class="cargo form-select"
                      aria-label="Default select example"
                      v-model="newMineral.aislante"
                    >
                      <option value=""></option>
                      <option value="Termico">Termico</option>
                      <option value="Electrico">Electrico</option>
                    </select>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="cancelar btn" data-bs-dismiss="modal">Cancelar</button>
                <button
                  type="button"
                  class="guardar btn"
                  @click="guardarMineral"
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
import TablaMinerales from '../../components/TablaMinerales.vue'
import NavBarVue from '../../components/NavBar.vue'
import { useRouter, useRoute } from 'vue-router'
import { getMinerales } from '../../Services/Minerales/MineralesGet.services'
import { postMineral } from '../../Services/Minerales/MineralPost.services'
import { deleteMineral } from '../../Services/Minerales/MineralesDelete.services'
import { putMineral } from '../../Services/Minerales/MineralesPut.services'
/*

* VARIABLES

*/

let router = useRouter()
let route = useRoute()
let mineralsList = ref([])
let filteredMineralsList = ref([])
let findMineral = ref('')
let newMineral = ref({})

newMineral.value = {
  nombre: '',
  tipometal: '',
  tipomineral: '',
  medicion: '',
  form_quimica: '',
  pur_ideal: 0,
  maleabilidad: '',
  dureza: 0,
  aislante: ''
}

/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getMinerales().then((Response) => (mineralsList.value = Response.data))
})



/*

* MÉTODOS(FUNCIONES)

*/
const guardarMineral = () => {
  switch (newMineral.value.tipomineral) {
    case 'Metalico':
      postMineral({
        nombre: newMineral.value.nombre,
        medicion: newMineral.value.medicion,
        formulaQ: newMineral.value.form_quimica,
        pureza: newMineral.value.pur_ideal,
        maleabilidad: newMineral.value.maleabilidad,
        dureza: newMineral.value.dureza,
        tipo_metal: newMineral.value.tipometal,
        aislante: null,
        min_tipo: newMineral.value.tipomineral
      })
      ;(newMineral.value.nombre = ''),
        (newMineral.value.medicion = ''),
        (newMineral.value.form_quimica = ''),
        (newMineral.value.pur_ideal = 0),
        (newMineral.value.maleabilidad = ''),
        (newMineral.value.dureza = 0),
        (newMineral.value.tipometal = ''),
        (newMineral.value.aislante = ''),
        (newMineral.value.tipomineral = '')
      router.go()
      break
    case 'No Metalico':
      postMineral({
        nombre: newMineral.value.nombre,
        medicion: newMineral.value.medicion,
        formulaQ: newMineral.value.form_quimica,
        pureza: newMineral.value.pur_ideal,
        maleabilidad: null,
        dureza: null,
        tipo_metal: null,
        aislante: newMineral.value.aislantel,
        min_tipo: newMineral.value.tipomineral
      })
      ;(newMineral.value.nombre = ''),
        (newMineral.value.medicion = ''),
        (newMineral.value.form_quimica = ''),
        (newMineral.value.pur_ideal = 0),
        (newMineral.value.maleabilidad = ''),
        (newMineral.value.dureza = 0),
        (newMineral.value.tipometal = ''),
        (newMineral.value.aislante = ''),
        (newMineral.value.tipomineral = '')
      router.go()
      break
  }
}

const getMinPut = (mineral) => {
  putMineral(mineral)
  router.go()
}

const filterMineral = () => {
  filteredMineralsList.value = mineralsList.value.filter((elm) => elm.nombre === findMineral.value)
  findMineral.value = ''
}

const showAllMinerals = () => {
  filteredMineralsList.value = []
}

const getidDeleteMin = (id) => {
  deleteMineral(id)
  router.go()
}
</script>

<style scope>
.addMin.btn {
  background-color: #fa8f14;
  color: white;
}

.filtrar.btn {
  background-color: #999981;
  color: white;
}

.form-control {
  border: solid 1px #859a9c;
  border-radius: 10px;
}

.form-select {
  background-color: #999981;
  color: white;
  border-radius: 10px;
}

hr {
  margin: auto;
}
</style>
