import axios from 'axios'

export const getMineral = async (id) => {
  try {
    return await axios.get(`http://localhost:3000/mineral/${id}`)
  } catch (error) {
    console.error(error)
  }
}
