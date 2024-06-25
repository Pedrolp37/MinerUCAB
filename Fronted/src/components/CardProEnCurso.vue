<template>
  <div class="proCurso card" style="width: 20rem; margin-bottom: 20px">
    <div class="proCurso card-body">
      <h5 class="card-title">{{ props.nomProyecto }}</h5>
      <hr />
      <div style="margin-top: 20px">
        <p class="contPro">Lider Proyecto: {{ props.nomLiderPro }}</p>
        <p class="contPro">Lider Mina: {{ props.nomLiderMin }}</p>
        <p class="contPro">Culminación: {{ props.culminacion }}</p>
      </div>
      <hr />
      <div class="container">
        <div class="row">
          <div class="col d-flex justify-content-start">
            <div>
              <router-link
                :to="{ name: 'detalle_proyecto', params: { id: props.idPro } }"
                class="detalle btn"
                >Ver Detalle Proyecto</router-link
              >
            </div>
          </div>
          <div class="col d-flex justify-content-end">
            <button class="eliminar btn" data-bs-toggle="modal" data-bs-target="#ConfirmarEliminar">
              Eliminar Proyecto
            </button>
            <div
              class="modal fade"
              id="ConfirmarEliminar"
              tabindex="-1"
              aria-labelledby="exampleModalLabel"
              aria-hidden="true"
            >
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h3>¿Quieres Eliminar Este Proyecto?</h3>
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
                          <button
                            class="confirmar btn"
                            data-bs-dismiss="modal"
                            @click="deletePro(props.idPro)"
                          >
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
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  idPro: {
    type: Number,
    required: false
  },

  nomProyecto: {
    type: String,
    required: true
  },

  nomLiderPro: {
    type: String,
    required: true
  },

  nomLiderMin: {
    type: String,
    required: true
  },

  culminacion: {
    type: String,
    required: true
  }
})

const emit = defineEmits(['dltPro'])
const deletePro = (id) => {
  emit('dltPro', id)
}
</script>

<style scoped>
hr {
  border-top: solid 2px black;
}

.proCurso.card {
  margin-top: 20px;
  border: solid 1px #cf8633;
  border-radius: 25px;
}

.detalle.btn {
  font-size: 10px;
  background-color: #6d360d;
  color: white;
}

.detalle.btn:hover {
  background-color: #c3b1a300;
  color: black;
}

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

.eliminar.btn {
  font-size: 10px;
  background-color: #928173;
  color: white;
}

.eliminar.btn:hover {
  background-color: #c3b1a300;
  color: black;
}

.contPro {
  margin: 3px;
  color: #7a6247;
}
</style>
