import axios from 'axios'

export const getSoliAliado = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/solicitudes-aliados/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
