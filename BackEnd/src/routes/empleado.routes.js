import { Router } from "express";
import {addEmpleado} from "../controllers/empleado.controllers.js";


const router = Router();

router.post('/nuevo-empleado',addEmpleado);

export default router;