import axios from 'axios'

export const getSoliAliado = async (id) => {
  try {
    return await axios.get(`http://localhost:3000/pago/${id}`)
  } catch (error) {
    console.error(error)
  }
}
