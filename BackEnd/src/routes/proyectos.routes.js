import { Router } from "express";
import {getProyecto, putEstatusProyecto,
        postProyecto,getSolicitudesPendiente,
        getPozosDisponibles, deleteProyecto } from '../controllers/proyectos.controllers.js';

const router = Router();
//Rutas
router.get('/proyecto',getProyecto);

router.put('/cambiar-estatus',putEstatusProyecto);

router.post('/crear-proyecto',postProyecto);

router.get('/solicitudes-pendientes/:offset',getSolicitudesPendiente);

router.get('/pozos-disponibles/:offset/:id_min',getPozosDisponibles);

router.delete('/eliminar-proyecto',deleteProyecto);

export default router;