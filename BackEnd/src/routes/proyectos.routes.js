import { Router } from "express";
import {getProyecto, putEstatusProyecto,
        postProyecto,getSolicitudesPendiente } from '../controllers/proyectos.controllers.js';

const router = Router();
//Rutas
router.get('/proyecto',getProyecto);

router.put('/cambiar-estatus',putEstatusProyecto);

router.post('/crear-proyecto',postProyecto);

router.get('/solicitudes-pendientes/:offset',getSolicitudesPendiente);

export default router;