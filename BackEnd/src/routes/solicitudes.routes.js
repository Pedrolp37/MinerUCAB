import { Router } from "express";
import { postSolicitudCliente, postSolicitudAliado,
    putSolicitudAliado, getSolicitudAliado,
    getSolicitudCliente} from '../controllers/solicitudes.controllers.js';

const router = Router();
//Rutas

router.post('/crear-solicitud-cliente', postSolicitudCliente);

router.post('/crear-solicitud-aliado',postSolicitudAliado);

router.put('/actualizar-solicitud-aliado',putSolicitudAliado);

router.get('/solicitudes-aliados/:offset',getSolicitudAliado);

router.get('/solicitudes-clientes',getSolicitudCliente);
export default router;