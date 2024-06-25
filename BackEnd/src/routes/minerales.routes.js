import { Router } from "express";
import {getMinerales} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerales);
export default router;