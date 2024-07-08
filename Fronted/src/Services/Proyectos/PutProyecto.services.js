import axios from 'axios'

export const putMineral = (proyecto) => {
  axios({
    method: 'put',
    url: `http://localhost:3000/cambiar-estatus`,
    data: proyecto
  })
}