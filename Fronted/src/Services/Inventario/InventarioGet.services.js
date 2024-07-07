import axios from 'axios'

export const getInventario = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/manejo-inventario/${offset}`)
  } catch (error) {
    console.error(error)
  }
}