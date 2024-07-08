import { Router } from "express";
import {getProyecto, putEstatusProyecto} from '../controllers/proyectos.controllers.js';

const router = Router();
//Rutas
router.get('/proyecto',getProyecto);

router.put('/cambiar-estatus',putEstatusProyecto);

export default router;