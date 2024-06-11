<template>
  <div>
    <NavBarVue />

    <section style="margin-top: 70px">
      <div class="container">
        <div class="row">
          <div class="col-6 d-flex justify-content-start">
            <h3 class="proyCurso">Proyectos En Curso</h3>
          </div>
          <div class="col-6 d-flex justify-content-end">
            <button type="button" class="button btn">+ Crear Nuevo Proyecto</button>
          </div>
        </div>
        <hr />
        <div class="row">
          <div class="col d-flex justify-content-end">
            <a href="" role="button" class="btn" style="color: #fa8f14">ver todos los proyectos</a>
          </div>
        </div>
        <div class="d-flex flex-wrap flex-row justify-content-around">
          <!--Aplicar v-for y props para mandar la información-->
          <CardVue/>
          <CardVue/>
          <CardVue/>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import CardVue from '../../components/Card.vue'
import NavBarVue from '../../components/NavBar.vue'
</script>

<style scoped>
hr{
  border-top: 2px solid #161717;
}

.button {
  height: 40px;
  border-radius: 10px;
  background-color: #fa8f14;
  color: white;
  text-align: center;
  font-weight: bold;
  font-size: 14px;
}

.proyCurso {
  color: #a57844;
}

</style>
