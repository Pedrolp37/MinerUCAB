import { Router } from "express";
import {getMinerales, eliminarMineral} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerales);

router.delete('/eliminar-mineral/:id',eliminarMineral);

export default router;