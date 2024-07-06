import axios from 'axios'

export const getClientes = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/clientes/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
