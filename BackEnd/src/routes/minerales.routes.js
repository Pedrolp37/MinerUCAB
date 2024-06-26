import { Router } from "express";
import {getMinerales, postMineral} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerales);

router.post('/minerales/post', postMineral)

export default router;