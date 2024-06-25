<template>
  <div>
    <table
      class="table table-striped"
      id="table"
      style="width: 60vw"
    >
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Mineral</th>
          <th class="tabla Cabecera">Cantidad</th>
          <th class="tabla Cabecera">Fecha Adquisición</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(invt, index) in inventario" :key="index" style="text-align: center">
          <td>{{ invt.mineral }}</td>
          <td>{{ invt.cantidad }}</td>
          <td>{{ invt.fcAdqui }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>

const props = defineProps({
  inventario: {
    required: true
  },
})


</script>

<style scoped>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}
</style>