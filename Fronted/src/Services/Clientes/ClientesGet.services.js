import axios from 'axios'

export const getClientes = async () => {
  try {
    return await axios.get('http://localhost:3000/clientes')
  } catch (error) {
    console.error(error)
  }
}
