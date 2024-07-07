import { Router } from "express";
import {postAliado} from "../controllers/aliado.controllers.js";
import { deleteAliado } from "../controllers/aliado.controllers.js";

const router = Router();

router.post('/aliado-nuevo',postAliado);

router.delete('/aliados-eliminar/:id', deleteAliado)

export default router;