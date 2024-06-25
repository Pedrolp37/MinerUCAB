import axios from 'axios'

export const getAliados = async () => {
  try {
    return await axios.get('http://localhost:3000/aliados')
  } catch (error) {
    console.error(error)
  }
}
