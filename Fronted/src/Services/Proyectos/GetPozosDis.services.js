import axios from 'axios'

export const getPozosDisponibles = async (offset, id_min) => {
  try {
    return await axios.get(`http://localhost:3000/pozos-disponibles/${offset}/${id_min}`)
  } catch (error) {
    console.error(error)
  }
}
