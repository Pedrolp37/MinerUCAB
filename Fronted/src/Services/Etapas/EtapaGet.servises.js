import axios from 'axios'

export const getEtapa = async (id) => {
  try {
    return await axios.get(`http://localhost:3000/mineral-config/${id}`)
  } catch (error) {
    console.error(error)
  }
}
