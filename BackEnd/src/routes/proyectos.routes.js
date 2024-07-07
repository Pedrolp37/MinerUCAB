import { Router } from "express";
import {getProyecto} from '../controllers/proyectos.controllers.js';

const router = Router();
//Rutas
router.get('/proyecto',getProyecto);

export default router;