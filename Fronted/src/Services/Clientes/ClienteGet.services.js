import axios from 'axios'

export const getCliente = async (dni) => {
  try {
    return await axios.get(`http://localhost:3000/cliente/${dni}`)
  } catch (error) {
    console.error(error)
  }
}
