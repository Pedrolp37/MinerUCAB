<template>
  <div>
    <table class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Aliado</th>
          <th class="tabla Cabecera">Mineral</th>
          <th class="tabla Cabecera">Cantidad</th>
          <th class="tabla Cabecera">Costo Total</th>
          <th class="tabla Cabecera">Fecha Solicitud</th>
          <th class="tabla Cabecera">Status</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(soli, index) in props.soliAliado" :key="index" style="text-align: center">
          <td>{{ soli.aliado }}</td>
          <td>{{ soli.mineral}}</td>
          <td>{{ soli.cantidad }}</td>
          <td>{{ soli.total }}</td>
          <td>{{ soli.factura_ali_fecha }}</td>
          <td>{{ soli.estatus }}</td>
          <td>
            <button 
              v-if="soli.estatus == 'Pendiente'" 
              class="seleccionar btn" 
              data-bs-toggle="modal"
              data-bs-target="#ModificarEstatus"
              @click="saveIdSoli(soli.rif)"
            >
            Modificar Estatus
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <div
      class="modal fade"
      id="ModificarEstatus"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3>Modificar Estatus Solicitud</h3>
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
                  <label for="telefono" class="label form-label">Tipo de Mineral:</label>
                  <select
                    class="estatus form-select"
                    aria-label="Default select example"
                    v-model="estatusSoli"
                  >
                    <option value="Metalico">Pendiente</option>
                    <option value="No Metalico">Atendida</option>
                  </select>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col d-flex justify-content-end">
                  <button class="cancelar btn" data-bs-dismiss="modal">Cancelar</button>
                  <button class="confirmar btn" data-bs-dismiss="modal" @click="sendNewEstatus">
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
import { ref } from "vue"

let estatusSoli = ref('')
let idSoli = ref('')

const props = defineProps({
  soliAliado : {
    required : false
  }
})

const emit = defineEmits(['modSoliAliado'])

const saveIdSoli = (id) => {
  idSoli.value = id
}

const sendNewEstatus = () => {
  emit('modSoliAliado', idSoli.value, estatusSoli.value)
}
</script>

<style scoped>
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