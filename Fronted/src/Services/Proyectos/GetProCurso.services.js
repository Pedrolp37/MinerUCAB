import axios from 'axios'

export const getProCurso = async (offset, id_min) => {
  try {
    return await axios.get(`http://localhost:3000/projects-progress/${offset}`)
  } catch (error) {
    console.error(error)
  }
}