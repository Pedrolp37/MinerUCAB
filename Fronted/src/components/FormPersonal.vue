<template>
  <div class="container" style="margin-top: 50px">
    <div class="row">
      <div class="formContainer col-7 d-flex flex-column justify-content-start">
        <div style="padding: 15px">
          <div class="d-flex justify-content-center">
            <label for="table" class="form-label">Personal Estimado</label>
          </div>
          <table class="table table-striped" id="table">
            <thead>
              <tr style="text-align: center">
                <th>Cargo</th>
                <th>Cantidad</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(elm, index) in personalEstimado" :key="index" style="text-align: center">
                <td>{{ elm.job }}</td>
                <td>{{ elm.cant }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="formContainer col-8 d-flex flex-column justify-content-start">
        <div style="padding: 15px">
          <div class="d-flex justify-content-center">
            <label for="table" class="form-label">Personal Disponible</label>
          </div>
          <table class="table table-striped" id="table">
            <thead>
              <tr style="text-align: center">
                <th>Nombre</th>
                <th>Apellido</th>
                <th>DNI</th>
                <th>Cargo</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(elm, index) in personalDisponible" :key="index" style="text-align: center">
                <td>{{ elm.name }}</td>
                <td>{{ elm.lastName }}</td>
                <td>{{ elm.dni }}</td>
                <td>{{ elm.job }}</td>
                <td>{{ elm.job }}</td>
                <td><button @click="getPersonal(elm)" class="btn">Seleccionar</button></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
        <div class="row">
      <div class="formContainer col-8 d-flex flex-column justify-content-start">
        <div style="padding: 15px">
          <div class="d-flex justify-content-center">
            <label for="table" class="form-label">Personal Disponible Seleccionado</label>
          </div>
          <table class="table table-striped" id="table">
            <thead>
              <tr style="text-align: center">
                <th>Nombre</th>
                <th>Apellido</th>
                <th>DNI</th>
                <th>Cargo</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(elm, index) in personalSeleccionado" :key="index" style="text-align: center">
                <td>{{ elm.name }}</td>
                <td>{{ elm.lastName }}</td>
                <td>{{ elm.dni }}</td>
                <td>{{ elm.job }}</td>
                <td>{{ elm.job }}</td>
                <td><button @click="eliminarPersonal(elm)" class="btn">Eliminar</button></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup></script>

<style scoped>
.form-label {
  color: black;
  font-size: 14px;
  font-weight: bold;
}

.formContainer {
  padding: 2px;
  border: solid 1px #c4cbc7;
  border-radius: 15px;
}

td .btn {
  background-color: #fa8f14;
  color: white;
  font-size: 10px;
}

</style>
