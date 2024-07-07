<template>
  <div>
    <!-- Efectivo -->
    <div v-if="props.metodo == 1" class="container">
      <button class="guardar btn" @click="guardarMetodoEmit">Guardar Método</button>
    </div>
    <!-- Transferencia -->
    <div v-if="props.metodo == 2" class="container">
      <div class="num input-group">
        <span class="dolar input-group-text">#</span>
        <input
          type="text"
          class="form-control"
          aria-label="Example"
          :placeholder="'Introducir Número De Transferencia'"
          v-model="numInf"
        />
      </div>
      <button class="guardar btn" @click="guardarMetodoEmit">Guardar Método</button>
    </div>
    <!-- Cheque -->
    <div v-if="props.metodo == 3" class="container">
      <div class="num input-group">
        <span class="dolar input-group-text">#</span>
        <input
          type="text"
          class="form-control"
          aria-label="Example"
          :placeholder="'Introducir Número De Cheque'"
          v-model="numInf"
        />
      </div>
      <button class="guardar btn" @click="guardarMetodoEmit">Guardar Método</button>
    </div>
    <!-- Tarjeta Debito -->
    <div v-if="props.metodo == 4" class="container">
      <div class="num input-group">
        <span class="dolar input-group-text">#</span>
        <input
          type="text"
          class="form-control"
          aria-label="Example"
          :placeholder="'Introducir Número De Tarjeta'"
          v-model="numInf"
        />
      </div>
      <div class="date input-group">
        <span class="dolar input-group-text"><i class="bi bi-calendar"></i></span>
        <input type="date" class="form-control" aria-label="Example" v-model="fechaV" />
      </div>
      <button class="guardar btn" @click="guardarMetodoEmit">Guardar Método</button>
    </div>
    <!-- Tarjeta Credito -->
    <div v-if="props.metodo == 5" class="container">
      <div class="num input-group">
        <span class="dolar input-group-text">#</span>
        <input
          type="text"
          class="form-control"
          aria-label="Example"
          :placeholder="'Introducir Número De Tarjeta'"
          v-model="numInf"
        />
      </div>
      <div class="date input-group">
        <span class="dolar input-group-text"><i class="bi bi-calendar"></i></span>
        <input type="date" class="form-control" aria-label="Example" v-model="fechaV" />
      </div>
      <button class="guardar btn" @click="guardarMetodoEmit">Guardar Método</button>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

let fechaV = ref('')
let monto = ref(0)
let numInf = ref('')

const props = defineProps({
  metodo: {
    required: true
  }
})

const emit = defineEmits(['metodoInf'])

const guardarMetodoEmit = () => {
  switch (props.metodo) {
    case '1':
      emit('metodoInf', 1, monto.value)
      fechaV.value = ''
      monto.value = 0
      numInf.value = ''
      break
    case '2':
      emit('metodoInf', 2, monto.value, numInf.value)
      fechaV.value = ''
      monto.value = 0
      numInf.value = ''
      break
    case '3':
      emit('metodoInf', 3, monto.value, numInf.value)
      fechaV.value = ''
      monto.value = 0
      numInf.value = ''
      break
    case '4':
      emit('metodoInf', 4, monto.value, numInf.value, fechaV.value)
      fechaV.value = ''
      monto.value = 0
      numInf.value = ''
      break
    case '5':
      emit('metodoInf', 5, monto.value, numInf.value, fechaV.value)
      fechaV.value = ''
      monto.value = 0
      numInf.value = ''
      break
  }
}
</script>

<style scoped>
.dolar.input-group-text {
  background-color: #7a6d5d;
  color: white;
}

.dolar.input-group {
  width: 20vw;
  margin-bottom: 20px;
}

.num.input-group {
  width: 30vw;
  margin-bottom: 20px;
}

.date.input-group {
  width: 30vw;
  margin-bottom: 20px;
}

.guardar.btn {
  background-color: #44694a;
  color: white;
}

.guardar.btn:hover {
  background-color: #fa8f1400;
  color: black;
}
</style>
