import { Router } from "express";
import {getMinerales, postMineral, eliminarMineral} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerales);

router.post('/minerales/post', postMineral)

router.delete('/minerales/delete/:id', eliminarMineral)

export default router;