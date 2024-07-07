import axios from 'axios'

export const getEmpleados = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/empleados/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
