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
          <td>{{ soli.rif }}</td>
          <td>{{ soli.de_mineral }}</td>
          <td>{{ soli.cantidad }}</td>
          <td>{{ soli.total }}</td>
          <td>{{ soli.factura_ali_fecha }}</td>
          <td>{{ soli.estatus }}</td>
          <td>
            <button class="seleccionar btn">Modificar Estatus</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>


const props = defineProps({
  soliAliado : {
    required : false
  }
})
</script>

<style scoped>

</style>