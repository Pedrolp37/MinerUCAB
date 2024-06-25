import axios from 'axios'

export const getMinerales = async () => {
  try {
    return await axios.get('http://localhost:3000/minerales')
  } catch (error) {
    console.error(error)
  }
}
