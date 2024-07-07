<template>
    <div>
        <NavBarVue />
        <div class="container" style="margin-top: 60px">
            <div class="row">
                <div class="col">
                    <h2 style="color: #a57844; margin-left: 30px">Solicitudes Aliados</h2>
                </div>
            </div>
            <hr>
            <div class="row" style="margin-top: 60px">
                <div class="col">
                    <div class="d-flex justify-content-center">
                        <TablaSAliados :soliAliado="solicitudesAli"/>
                    </div>
                    <div class="d-flex justify-content-center">
                        <Pagination @backPag="backPagSAliado" @nextPag="nextPagSAliado" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
import { onMounted, ref } from 'vue'
import NavBarVue from '../../components/NavBar.vue'
import TablaSAliados from '../../components/TablaSAliados.vue'
import {getSoliAliado} from '../../Services/Solicitudes/GetSoliAliado.services.js'

/*

* VARIABLES

*/

let solicitudesAli = ref([])
let changePageSoAliado = ref(0)

/*

* CONSUMO DE LA API

*/

onMounted(async () => {
  getSoliAliado(changePageSoAliado.value).then((Response) => (solicitudesAli.value = Response.data))
})

/*

* METHODS

*/

const nextPagSAliado = () => {
  if (solicitudesAli.value.length == 5) {
    changePageSoAliado.value += 5
    getNewPageCliente()
  }
}

const backPagSAliado = () => {
  if (changePageSoAliado.value >= 5) {
    changePageSoAliado.value -= 5
    getNewPageCliente()
  }
}

const getNewPageSAliado = async () => {
  getSoliAliado(changePageSoAliado.value).then((Response) => (solicitudesAli.value = Response.data))
}
</script>

<style scoped>

</style>