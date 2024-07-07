import axios from 'axios'

export const getAliado = async (id) => {
  try {
    return await axios.get(`http://localhost:3000/aliado/${id}`)
  } catch (error) {
    console.error(error)
  }
}
