import express from 'express';
import cors from 'cors';
import {PORT, CorsOptions} from './config.js';
//import {} from './routes/'; Definir rutas
import morgan from 'morgan'

const app = express();

app.use(morgan('tiny'));
app.use(express.json());
//app.use(Routes); Definir rutas
app.use(cors(CorsOptions));

app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`)
});