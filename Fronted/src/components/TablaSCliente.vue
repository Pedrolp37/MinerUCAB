<template>
  <div>
    <table class="table table-striped" id="table">
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
  </div>
</template>

<script setup>
const props = defineProps({
  soliCliente: {
    required: false
  }
})
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
