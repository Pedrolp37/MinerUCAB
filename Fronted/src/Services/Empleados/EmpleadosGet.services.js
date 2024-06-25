import axios from 'axios'

export const getEmpleados = async () => {
  try {
    return await axios.get('http://localhost:3000/empleados')
  } catch (error) {
    console.error(error)
  }
}
