import axios from 'axios'

export const getAllProyectos = async (offset) => {
  try {
    return await axios.get(`http://localhost:3000/proyectos/${offset}`)
  } catch (error) {
    console.error(error)
  }
}
