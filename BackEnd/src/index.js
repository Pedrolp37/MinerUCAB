import express from 'express';
import cors from 'cors';
import {PORT, CorsOptions} from './config.js';
//import {} from './routes/'; Definir rutas
import mineralRoutes from './routes/minerales.routes.js';
import projectRoute from './routes/listas.routes.js';
import aliadoRoutes from './routes/aliado.routes.js';
import morgan from 'morgan'
 
const app = express();

app.use(morgan('tiny'));
app.use(express.json());
//app.use(Routes); Definir rutas
app.use(mineralRoutes);
app.use(projectRoute);
//aliado
app.use(aliadoRoutes);

app.use(cors(CorsOptions));

app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`)
});