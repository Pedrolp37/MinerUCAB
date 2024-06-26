import { Router } from "express";
import {getMinerales, eliminarMineral,createMineral} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerales);

router.delete('/eliminar-mineral/:id',eliminarMineral);

router.post('/crear',createMineral);

export default router;