import axios from 'axios'

export const putESoliAli = (InfMod) => {
  axios({
    method: 'put',
    url: 'http://localhost:3000/actualizar-solicitud-aliado',
    data: InfMod
  })
}
