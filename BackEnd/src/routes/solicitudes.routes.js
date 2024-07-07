import { Router } from "express";
import { postSolicitudCliente } from '../controllers/solicitudes.controllers.js';

const router = Router();
//Rutas

router.post('/crear-solicitud-cliente', postSolicitudCliente);
export default router;