import axios from 'axios'

export const getSoliCliente = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/solicitudes-clientes/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
