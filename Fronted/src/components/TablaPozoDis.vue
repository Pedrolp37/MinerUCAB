<template>
  <div>
    <table class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Pozo Id</th>
          <th class="tabla Cabecera">Pozo Mineral</th>
          <th class="tabla Cabecera">Estatus Pozo</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(po, index) in props.pozosDisponibles" :key="index" style="text-align: center">
          <td>{{ po.po_id }}</td>
          <td>{{ po.mineral }}</td>
          <td>{{ po.estatus }}</td>
          <td>
            <button class="seleccionar btn" @click="getIdPozoId(po.po_id)">Seleccionar</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>
const props = defineProps({
  pozosDisponibles: {
    required: false
  },
})

const emit = defineEmits(['getIdPozo'])

const getIdPozoId = (id_pozo) => {
    emit('getIdPozo', id_pozo)
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