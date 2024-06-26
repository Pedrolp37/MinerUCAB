import { Router } from "express";
import {eliminarEtapa} from '../controllers/etapas.controllers.js';

const router = Router();
//Rutas

router.delete('/eliminar-etapa/:id',eliminarEtapa);

export default router;