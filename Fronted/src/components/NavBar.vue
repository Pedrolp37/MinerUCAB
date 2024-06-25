<template>
  <nav class="navbar navbar-expand-lg" style="background-color: #50463c">
    <div class="container-fluid">
      <router-link :to="{ name: 'proyectos' }" class="navbar-brand">MINERUCAB</router-link>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              style="color: white"
            >
              Tu Trabajo
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><hr class="dropdown-divider" /></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              style="color: white"
            >
              Proyectos
            </a>
            <ul class="dropdown-menu">
              <li><p class="ddwProyectos-p">En curso</p></li>

              <li v-for="(elm, index) in proyectos" :key="index">
                <router-link
                  :to="{ name: 'detalle_proyecto', params: { id: elm.id } }"
                  class="dropdown-item"
                  style="margin: 4px"
                  >{{ elm.name }}</router-link
                >
              </li>

              <li><hr class="dropdown-divider" /></li>
              <li>
                <div class="container">
                  <div class="row">
                    <div class="col-6 d-flex justify-content-start">
                      <!--Este router link te manda a mostrar todos los proyecto-->
                      <router-link
                        :to="{ name: 'proyectos_todos' }"
                        class="dropdown-item button btn"
                        >Ver todos los proyectos</router-link
                      >
                    </div>
                    <div class="col-6 d-flex justify-content-end">
                      <!--Este router link te manda a crear proyecto-->
                      <router-link :to="{ name: 'crear_proyecto' }" class="dropdown-item button btn"
                        >+ Crear Nuevo Proyecto</router-link
                      >
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              style="color: white"
            >
              Solicitudes
            </a>
            <ul class="dropdown-menu">
              <li>
                <router-link :to="{}" class="dropdown-item"
                  ><i class="bi bi-plus"></i> Crear solicitud cliente</router-link
                >
              </li>
              <li>
                <router-link :to="{}" class="dropdown-item"
                  ><i class="bi bi-plus"></i> Crear solicitud aliado</router-link
                >
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              style="color: white"
            >
              Empleados
            </a>
            <ul class="dropdown-menu">
              <li>
                <router-link :to="{ name: 'empleados' }" class="dropdown-item"
                  ><i class="bi bi-list-task"></i> Ver Empleados</router-link
                >
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              style="color: white"
            >
              Más
            </a>
            <ul class="dropdown-menu">
              <li>
                <router-link :to="{}" class="dropdown-item"
                  ><i class="bi bi-folder"></i> Ver informes</router-link
                >
              </li>
              <li>
                <router-link :to="{ name: 'clientes' }" class="dropdown-item"
                  ><i class="bi bi-person-arms-up"></i> Ver clientela</router-link
                >
              </li>
              <li>
                <router-link :to="{ name: 'aliados' }" class="dropdown-item"
                  ><i class="bi bi-card-list"></i> Ver Aliados</router-link
                >
              </li>
              <li>
                <router-link :to="{ name: 'procesos' }" class="dropdown-item"
                  ><i class="bi bi-file-earmark-arrow-down"></i> Actualizar procesos</router-link
                >
              </li>
              <li>
                <router-link :to="{ name: 'inventario' }" class="dropdown-item"
                  ><i class="bi bi-archive"></i> Ver inventario</router-link
                >
              </li>
            </ul>
          </li>
          <div class="nav-item btn-group usuario">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              {{ usuario }}
            </a>
            <ul class="dropdown-menu">
              <li>
                <router-link :to="{}" class="dropdown-item"
                  ><i class="bi bi-door-closed"></i> Cerrar Sesión</router-link
                >
              </li>
            </ul>
          </div>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script setup>
import { ref } from 'vue'

let usuario = ref('')
let proyectos = ref([])

usuario.value = 'PL'

proyectos = [
  {
    id: 1,
    name: '% Andrómeda',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  },

  {
    id: 2,
    name: '% Lactea',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  },

  {
    id: 3,
    name: '% Gemini',
    tipo: 'Gestionado con aliados',
    nameLPro: 'Arturo',
    nameLMin: 'Pedro',
    Exp: 2,
    fC: '01/02/24'
  }
]
</script>

<style scoped>
.navbar-brand {
  margin-left: 20px;
  color: white;
}

.collapse {
  margin-left: 230px;
}

.nav-item {
  margin-left: 10px;
}

.usuario {
  border: solid 1px white;
  border-radius: 50px;
  background-color: white;
  font-weight: bold;
  font-size: 14px;
  color: black;
  padding: 2px;
  margin-left: 200px;
  text-align: center;
}

.dropdown-divider {
  border-top: 2px solid #4a4c4d;
}

.divider {
  border-top: 6px solid #2ba4e1;
}

.ddwProyectos-p {
  margin-left: 10px;
  font-size: 15px;
  color: #7a6247;
}

.dropdown-item.button {
  height: 20px;
  width: 300px;
  color: black;
  text-align: center;
  font-weight: bold;
  font-size: 8px;
}

.bi {
  color: black;
}
.dropdown-item {
  font-size: 15px;
  font-family: sans-serif;
  color: #494744;
}
</style>
