<template>
  <div>
    <table
      v-if="props.filteredMinerals.length == 0"
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Mineral</th>
          <th class="tabla Cabecera">Tipo de Metal</th>
          <th class="tabla Cabecera">Tipo de Mineral</th>
          <th class="tabla Cabecera">Opciones</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(elm, index) in props.minerals" :key="index" style="text-align: center">
          <td>{{ elm.nombre }}</td>
          <td>{{ elm.tipometal }}</td>
          <td>{{ elm.tipomineral }}</td>
          <td>
            <button class="detalle btn">Detalle</button>
            |
            <button
              class="modificar btn"
              @click="saveIdMin(elm.id)"
              data-bs-toggle="modal"
              data-bs-target="#ModificarMineral"
            >
              Modificar
            </button>
            |
            <button
              class="eliminar btn"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
              @click="saveIdMin(elm.id)"
            >
              Eliminar
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <table
      v-if="props.filteredMinerals.length != 0"
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Mineral</th>
          <th class="tabla Cabecera">Tipo de Metal</th>
          <th class="tabla Cabecera">Tipo de Mineral</th>
          <th class="tabla Cabecera">Opciones</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(elm, index) in props.filteredMinerals" :key="index" style="text-align: center">
          <td>{{ elm.nombre }}</td>
          <td>{{ elm.tipometal }}</td>
          <td>{{ elm.tipomineral }}</td>
          <td>
            <button class="detalle btn">Detalle</button>
            |
            <button
              class="modificar btn"
              @click="saveIdMin(elm.id)"
              data-bs-toggle="modal"
              data-bs-target="#ModificarMineral"
            >
              Modificar
            </button>
            |
            <button
              class="eliminar btn"
              data-bs-toggle="modal"
              data-bs-target="#ConfirmarEliminar"
              @click="saveIdMin(elm.id)"
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
            <h3>¿Quieres Eliminar Este Mineral?</h3>
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
                  <button class="confirmar btn" data-bs-dismiss="modal" @click="sendResponseSDM">
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
      id="ModificarMineral"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Modificar Mineral</h1>
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
                    v-model="mineralMod.nombre"
                    autocomplete="off"
                  />
                </div>

                <div class="mb-3">
                  <label for="nombre" class="label form-label">Fórmula Química:</label>
                  <input
                    type="text"
                    class="form-control"
                    id="nombre"
                    v-model="mineralMod.form_quimica"
                    autocomplete="off"
                  />
                </div>

                <div class="mb-3">
                  <label for="nombre" class="label form-label">Dureza:</label>
                  <input
                    type="number"
                    class="form-control"
                    id="nombre"
                    v-model="mineralMod.dureza"
                    autocomplete="off"
                  />
                </div>

                <div class="mb-3">
                  <label for="nombre" class="label form-label">Pureza Ideal:</label>
                  <input
                    type="number"
                    class="form-control"
                    id="nombre"
                    v-model="mineralMod.pur_ideal"
                    autocomplete="off"
                  />
                </div>

                <div class="mb-3">
                  <label for="telefono" class="label form-label">Tipo de Mineral:</label>
                  <select
                    class="cargo form-select"
                    aria-label="Default select example"
                    v-model="mineralMod.tipomineral"
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
                    v-model="mineralMod.tipometal"
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
                    v-model="mineralMod.medicion"
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
                    v-model="mineralMod.maleabilidad"
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
                    v-model="mineralMod.aislante"
                  >
                    <option value=""></option>
                    <option value="Termico">Termico</option>
                    <option value="Electrico">Electrico</option>
                  </select>
                </div>
              </form>
              <hr />
              <div class="row">
                <div class="col d-flex justify-content-end">
                  <button class="cancelar btn" data-bs-dismiss="modal" @click="cleanData">
                    Cancelar
                  </button>
                  <button class="guardar btn" data-bs-dismiss="modal" @click="saveChangesMin">
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

/*

* VARIABLES

*/

let idMin = ref(0)
let mineralMod = ref({})

mineralMod.value = {
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

* PROPS Y EMITS

*/

const props = defineProps({
  minerals: {
    required: true
  },

  filteredMinerals: {
    required: false
  }
})

const emit = defineEmits(['dltMineral','modMineral'])



/*

* METHODS(FUINCIONES)

*/

const cleanData = () => {}

const saveIdMin = (id) => {
  idMin.value = id
}

const saveChangesMin = () => {
  switch (mineralMod.value.tipomineral) {
    case 'Metalico':
      emit('modMineral',{
          mineral_id : idMin.value,
          nombre: mineralMod.value.nombre,
          medicion: mineralMod.value.medicion,
          formulaQ: mineralMod.value.form_quimica,
          pureza: mineralMod.value.pur_ideal,
          maleabilidad: mineralMod.value.maleabilidad,
          dureza: mineralMod.value.dureza,
          tipo_metal: mineralMod.value.tipometal,
          aislante: null,
          min_tipo: mineralMod.value.tipomineral
        }
      )

      mineralMod.value.nombre = '',
      mineralMod.value.medicion = '',
      mineralMod.value.form_quimica = '',
      mineralMod.value.pur_ideal = 0,
      mineralMod.value.maleabilidad = '',
      mineralMod.value.dureza = 0,
      mineralMod.value.tipometal = '',
      mineralMod.value.aislante = '',
      mineralMod.value.tipomineral = ''
      break
    case 'No Metalico':
      emit('modMineral',{
          mineral_id : idMin.value,
          nombre: mineralMod.value.nombre,
          medicion: mineralMod.value.medicion,
          formulaQ: mineralMod.value.form_quimica,
          pureza: mineralMod.value.pur_ideal,
          maleabilidad: null,
          dureza: null,
          tipo_metal: null,
          aislante: mineralMod.value.aislantel,
          min_tipo: mineralMod.value.tipomineral
        }
      )
      mineralMod.value.nombre = '',
      mineralMod.value.medicion = '',
      mineralMod.value.form_quimica = '',
      mineralMod.value.pur_ideal = 0,
      mineralMod.value.maleabilidad = '',
      mineralMod.value.dureza = 0,
      mineralMod.value.tipometal = '',
      mineralMod.value.aislante = '',
      mineralMod.value.tipomineral = ''
      break
  }
}

const sendResponseSDM = () => {
  emit('dltMineral', idMin.value)
}

</script>

<style scope>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

.eliminar.btn {
  background-color: #fa8f14;
  color: white;
}
.eliminar.btn:hover {
  background-color: #7d685000;
  color: black;
}

.modificar.btn {
  background-color: #2f9e3c;
  color: white;
}
.modifcar.btn:hover {
  background-color: #7d685000;
  color: black;
}

.detalle.btn {
  background-color: #148bfa;
  color: white;
}
.detalle.btn:hover {
  background-color: #7d685000;
  color: balck;
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

.guardar.btn {
  background-color: #695844;
  color: white;
}

.guardar.btn:hover {
  background-color: #fa8f1400;
  color: black;
}
</style>
