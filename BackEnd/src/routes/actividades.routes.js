import { Router } from "express";
import { deleteActividad } from "../controllers/actividades.controllers.js";

const router = Router();
//Rutas
router.delete('/actividades/eliminar/:actividad_id',deleteActividad);

export default router;