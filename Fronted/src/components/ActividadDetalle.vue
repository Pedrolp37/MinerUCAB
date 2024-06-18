<template>
  <div class="body container" style="">
    <div class="detalle container">
      <div class="row">
        <div class="col d-flex justify-content-end">
          <router-link
            :to="{ name: 'detalle_proyecto' }"
            type="button"
            class="btn-close"
            aria-label="Close"
            style="margin: 8px"
          ></router-link>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <h4 style="margin-left: 15px">{{ 'Title Actividad' }}</h4>
          <h6 style="margin-left: 15px; color: #909090">Fecha: {{ 'xx/xx/xxxx' }}</h6>
        </div>
      </div>
      <div class="row" style="margin-top: 50px">
        <div class="col d-flex flex-column justify-content-start">
          <h6 style="margin-left: 15px; font-weight: bold">Description:</h6>
          <p style="margin-left: 15px; font-size: 14px; color: #6a6363; font-weight: bold">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar vel erat posuere
            ullamcorper. Quisque sollicitudin sem bibendum sem eleifend, in rutrum ex accumsan. Nunc
            auctor massa nec commodo sodales. Quisque egestas congue purus eu fermentum.
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
                        v-for="(elm, index) in [
                          {
                            name: 'arturo',
                            lastName: 'perez',
                            horario: 'desde 14/04/15 hasta 15/12/15'
                          }
                        ]"
                        :key="index"
                        style="text-align: center"
                      >
                        <td class="td">{{ elm.name }}</td>
                        <td class="td">{{ elm.lastName }}</td>
                        <td class="td">{{ elm.horario }}</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div>
                  <h6 style="font-size: 15px; color: #2f2d2d">Prioridad:</h6>
                  <p style="border-radius: 5px; background-color: red; color: white;text-align: center ;width: 60px">{{'Alta'}}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup></script>

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
