<template>
  <div>
    <NavBarVue :proyectos="proyectos" />
    <hr class="sNavMenu" />
    <div class="d-flex flex-row">
      <MenuOptProVue />
      <ActividadDetalleVue />
    </div>
  </div>
</template>

<script setup>
import ActividadDetalleVue from '../../components/ActividadDetalle.vue'
import EtapasActividadesVue from '../../components/NavEActividades.vue'
import MenuOptProVue from '../../components/MenuOptPro.vue'
import NavBarVue from '../../components/NavBar.vue'
</script>

<style scope>
.sNavMenu {
  margin: 0px;
  border-top: solid 1px #fa8f14;
}
</style>
