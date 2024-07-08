<template>
  <div>
    <table v-if="props.isCProyecto == false"  class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Cliente</th>
          <th class="tabla Cabecera">Mineral</th>
          <th class="tabla Cabecera">Cantidad</th>
          <th class="tabla Cabecera">Costo Total</th>
          <th class="tabla Cabecera">Fecha Solicitud</th>
          <th class="tabla Cabecera">Status</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(cli, index) in props.soliCliente" :key="index" style="text-align: center">
          <td>{{ cli.nombre }} {{ cli.apellido }}</td>
          <td>{{ cli.mineral }}</td>
          <td>{{ cli.cantidad }}</td>
          <td>{{ cli.total }}</td>
          <td>{{ cli.fecha }}</td>
          <td>{{ cli.estatus }}</td>
        </tr>
      </tbody>
    </table>
    <table v-if="props.isCProyecto == true"  class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Cliente</th>
          <th class="tabla Cabecera">Mineral</th>
          <th class="tabla Cabecera">Cantidad</th>
          <th class="tabla Cabecera">Costo Total</th>
          <th class="tabla Cabecera">Fecha Solicitud</th>
          <th class="tabla Cabecera">Status</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(cli, index) in props.soliCliente" :key="index" style="text-align: center">
          <td>{{ cli.nombre }} {{ cli.apellido }}</td>
          <td>{{ cli.mineral }}</td>
          <td>{{ cli.cantidad }}</td>
          <td>{{ cli.total }}</td>
          <td>{{ cli.fecha }}</td>
          <td>{{ cli.estatus }}</td>
          <td>
            <button class="seleccionar btn" @click="getIdSoliC(cli.identificacion)">Seleccionar</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>
const props = defineProps({
  soliCliente: {
    required: false
  },

  isCProyecto : {
    required : true
  }
})

const emit = defineEmits(['getIdSoliCliente'])

const getIdSoliC = (id_solicitud) => {
    emit('getIdSoliCliente', id_solicitud)
}
</script>

<style scoped>
.seleccionar.btn {
  margin-right: 10px;
  font-size: 10px;
  background-color: #44694a;
  color: white;
}

.seleccionar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}
</style>
