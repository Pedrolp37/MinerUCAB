import axios from 'axios'

export const getAliados = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/aliados/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
