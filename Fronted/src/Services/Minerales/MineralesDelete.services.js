import axios from 'axios'

export const deleteMineral = (id) => {
  axios({
    method: 'delete',
    url: `http://localhost:3000/minerales/delete/${id}`
  })
}
