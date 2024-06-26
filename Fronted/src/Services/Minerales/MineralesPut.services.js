import axios from 'axios'

export const putMineral = (mineral) => {
  axios({
    method: 'put',
    url: `http://localhost:3000/minerales/put`,
    data: mineral
  })
}