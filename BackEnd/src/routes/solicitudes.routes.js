import { Router } from "express";
import { postSolicitudCliente, postSolicitudAliado } from '../controllers/solicitudes.controllers.js';

const router = Router();
//Rutas

router.post('/crear-solicitud-cliente', postSolicitudCliente);

router.post('/crear-solicitud-aliado',postSolicitudAliado);
export default router;