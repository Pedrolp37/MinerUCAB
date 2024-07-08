import axios from 'axios'

export const postProyectoNuevo = (proyecto) => {
  axios({
    method: 'post',
    url: 'http://localhost:3000/crear-proyecto',
    data: proyecto
  })
}
