import { Router } from "express";
import {getProyecto, putEstatusProyecto,
        postProyecto,getSolicitudesPendiente,
        getPozosDisponibles } from '../controllers/proyectos.controllers.js';

const router = Router();
//Rutas
router.get('/proyecto',getProyecto);

router.put('/cambiar-estatus',putEstatusProyecto);

router.post('/crear-proyecto',postProyecto);

router.get('/solicitudes-pendientes',getSolicitudesPendiente);

router.get('/pozos-disponibles',getPozosDisponibles);

export default router;