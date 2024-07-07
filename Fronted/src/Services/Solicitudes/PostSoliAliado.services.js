import axios from 'axios'

export const postAliadoMetodo = (InfAliado) => {
  axios({
    method: 'post',
    url: 'http://localhost:3000/crear-solicitud-aliado',
    data: InfAliado
  })
}
