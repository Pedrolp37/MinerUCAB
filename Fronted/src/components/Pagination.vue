<template>
  <nav aria-label="Page navigation example">
    <ul class="pagination">
      <li class="page-item">
        <button class="page-link btn" @click="backPagCliente" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </button>
      </li>
      <li class="page-item">
        <button class="page-link btn" @click="nextPagCliente" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
        </button>
      </li>
    </ul>
  </nav>
</template>

<script setup>
import { ref } from 'vue'
let emit = defineEmits(['nextPag', 'backPag'])

const nextPagCliente = () => {
  emit('nextPag')
}

const backPagCliente = () => {
  emit('backPag')
}
</script>

<style scoped>
.page-link.btn {
  margin-right: 20px;
  font-size: 15px;
  background-color: #7d8e87;
  color: white;
}

.page-link.btn:hover {
  background-color: #c3b1a300;
  color: black;
}
</style>
