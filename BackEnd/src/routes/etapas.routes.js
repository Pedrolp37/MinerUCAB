import { Router } from "express";
import {eliminarEtapa,postEtapa} from '../controllers/etapas.controllers.js';

const router = Router();
//Rutas

router.delete('/eliminar-etapa/:id',eliminarEtapa);

router.post('/etapa/post-etapa',postEtapa);
export default router;