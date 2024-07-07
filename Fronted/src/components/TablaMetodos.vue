<template>
  <div>
    <table v-if="props.metodosInf.length != 0" class="table table-striped" id="table">
      <thead>
        <tr style="text-align: center">
          <th class="tabla Cabecera">Método</th>
          <th class="tabla Cabecera">Monto</th>
          <th class="tabla Cabecera"></th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(elm, index) in props.metodosInf" :key="index" style="text-align: center">
          <td>{{ elm.metodo }}</td>
          <td>{{ elm.monto }}</td>
          <td>
            <button class="seleccionar btn" @click="deleteMetdSS(elm.metodo)">Eliminar</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>
const emit = defineEmits(['deleteMetdSS'])

const props = defineProps({
  metodosInf: {
    requiered: false
  }
})

const deleteMetdSS = (metodo) => {
  emit('deleteMetdSS', metodo)
}
</script>

<style scoped>
.tabla.Cabecera {
  background-color: #7a6247;
  color: white;
}

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
