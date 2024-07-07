import axios from 'axios'

export const postMetodo = (metodoInf) => {
  axios({
    method: 'post',
    url: 'http://localhost:3000/crear-solicitud-cliente',
    data: metodoInf
  })
}
