import { Router } from "express";
import {getMinerales, postMineral, eliminarMineral,putMineral} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerales);

router.post('/minerales/post', postMineral)

router.delete('/minerales/delete/:id', eliminarMineral)

router.put('/minerales/put',putMineral);

export default router;