import axios from 'axios'

export const getMinerales = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/minerales/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
