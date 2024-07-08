import axios from 'axios'

export const deleteProyecto = (id) => {
  axios({
    method: 'delete',
    url: `http://localhost:3000/eliminar-proyecto/${id}`
  })
}