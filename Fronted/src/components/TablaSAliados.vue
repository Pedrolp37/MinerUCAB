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
          <td>{{ soli.mineral }}</td>
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
              @click="saveInfUpdate(soli.factura_ali_id, soli.cantidad, soli.factura_ali_min_id)"
            >
              Modificar Estatus
            </button>
            |
            <button
              class="seleccionar btn"
              data-bs-toggle="modal"
              data-bs-target="#MetodoPago"
              @click="getPagos(soli.factura_ali_id)"
            >
              Ver Pago
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
            <h3>¿Quieres Modificar Esta Solicitud?</h3>
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
                  <button class="confirmar btn" data-bs-dismiss="modal" @click="UpdateSoli">
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
      id="MetodoPago"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="titleModal">Pagos</h3>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <div v-if="pagos.length != 0" class="container">
              <div class="row">
                <div class="col">
                  <h5 class="content">Rif Aliado: <span class="pago">{{pagos[0].rif}}</span></h5>
                </div>
              </div>
              <div class="row">
                <div class="col">
                  <h5  class="content">Metodo De Pago: <span class="pago">{{pagos[0].metodo}}</span></h5>
                </div>
              </div>
              <div class="row">
                <div class="col">
                  <h5  class="content">Monto Pago: <span class="pago">{{pagos[0].monto}}</span></h5>
                </div>
              </div>
              <div class="row">
                <div class="col">
                  <h5  class="content">Fecha Pago: <span class="pago">{{pagos[0].f_pago}}</span></h5>
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
import {getSoliAliado} from '../Services/Solicitudes/GetPagoSAliado.services.js'

let idSoli = ref(0)
let cant = ref(0)
let idMin = ref(0)
let pagos = ref([])

const props = defineProps({
  soliAliado: {
    required: false
  }
})

const emit = defineEmits(['modSoliAliado'])

const saveInfUpdate = (id_soli, cantidad, id_min) => {
  idSoli.value = id_soli
  cant.value = cantidad
  idMin.value = id_min
}

const getPagos = async (id_soli) => {
  getSoliAliado(id_soli).then((Response) => (pagos.value = Response.data))
}

const UpdateSoli = () => {
  emit('modSoliAliado', idSoli.value, cant.value, idMin.value)
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

.titleModal{
  color:#b47328;
}

.content{
  color:#7d4b12;
}

.pago{
  color:#c3a57c;
  font-size: 17px;
}
</style>
