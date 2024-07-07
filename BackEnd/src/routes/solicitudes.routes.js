import { Router } from "express";
import { postSolicitudCliente, postSolicitudAliado,
    putSolicitudAliado } from '../controllers/solicitudes.controllers.js';

const router = Router();
//Rutas

router.post('/crear-solicitud-cliente', postSolicitudCliente);

router.post('/crear-solicitud-aliado',postSolicitudAliado);

router.put('/actualizar-solicitud-aliado',putSolicitudAliado);
export default router;