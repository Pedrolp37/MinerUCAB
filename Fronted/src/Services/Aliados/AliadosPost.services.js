import axios from 'axios'

export const postAliado = (aliado) => {
  axios({
    method: 'post',
    url: 'http://localhost:3000/aliado-nuevo',
    data: aliado
  })
}
