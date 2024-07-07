import { Router } from "express";
import {getMinerales, getMineral,postMineral, eliminarMineral,putMineral} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales/:offset', getMinerales);

router.get('/mineral/:id', getMineral);

router.post('/minerales/post', postMineral)

router.delete('/minerales/delete/:id', eliminarMineral)

router.put('/minerales/put',putMineral);

export default router;