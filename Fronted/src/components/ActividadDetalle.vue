<template>
  <div class="body container" style="">
    <div class="detalle container">
      <div class="row">
        <div class="col d-flex justify-content-end">
          <button
            @click="closeDActivity"
            type="button"
            class="btn-close"
            aria-label="Close"
            style="margin: 8px"
          ></button>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <h4 style="margin-left: 15px">{{ props.activity.title }}</h4>
          <h6 style="margin-left: 15px; color: #909090">Fecha: {{ props.activity.culmination }}</h6>
        </div>
      </div>
      <div class="row" style="margin-top: 50px">
        <div class="col d-flex flex-column justify-content-start">
          <h6 style="margin-left: 15px; font-weight: bold">Description:</h6>
          <p style="margin-left: 15px; font-size: 14px; color: #6a6363; font-weight: bold">
            {{ props.activity.description }}
          </p>
        </div>
        <div class="col d-flex justify-content-end">
          <div class="card">
            <div
              class="card-header"
              style="text-align: center; background-color: #e8e8e8; font-weight: bold"
            >
              Detalle
            </div>
            <div class="card-body">
              <div class="container" style="width: 30vw">
                <div>
                  <h6 style="font-size: 15px; color: #2f2d2d">Empleados Asignados:</h6>
                  <table class="empAsig table table-striped" style="">
                    <thead>
                      <tr style="text-align: center">
                        <th class="empleadoAsignado">Nombre</th>
                        <th class="empleadoAsignado">Apellido</th>
                        <th class="empleadoAsignado">Horario</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr
                        v-for="(elm, index) in props.activity.employees"
                        :key="index"
                        style="text-align: center"
                      >
                        <td class="td">{{ elm.name }}</td>
                        <td class="td">{{ elm.lastName }}</td>
                        <td class="td">{{ elm.horary }}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div>
                  <h6 style="font-size: 15px; color: #2f2d2d">Prioridad:</h6>
                  <p
                    style="
                      border-radius: 5px;
                      background-color: red;
                      color: white;
                      text-align: center;
                      width: 60px;
                    "
                  >
                    {{ props.activity.priority }}
                  </p>
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
const props = defineProps({
  activity: {
    required: true
  }
})

const emit = defineEmits(['closeDAct'])
const closeDActivity = () => {
  emit('closeDAct', 'etapas')
}

console.log(props.activity)
</script>

<style scoped>
.detalle.container {
  margin-top: 60px;
  margin-left: 100px;
  background-color: white;
  height: 85vh;
  width: 70vw;
  display: inline-block;
}

.body.container {
  background-color: #cdcbbe;
  height: 100vh;
}

.empleadoAsignado {
  font-size: 13px;
  text-align: center;
  color: #6f6b6b;
}

.td {
  color: #847878;
}
</style>
