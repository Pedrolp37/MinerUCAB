import axios from 'axios'

export const getSPCliente = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/solicitudes-pendientes/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
