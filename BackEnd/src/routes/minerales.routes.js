import { Router } from "express";
import {getMinerals} from '../controllers/minerales.controllers.js';

const router = Router();
//Rutas
router.get('/minerales', getMinerals);
export default router;