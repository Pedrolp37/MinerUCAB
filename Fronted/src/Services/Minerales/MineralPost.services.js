import axios from 'axios'

export const postMineral = (mineral) => {
  axios({
    method: 'post',
    url: 'http://localhost:3000/minerales/post',
    data: mineral
  })
}
