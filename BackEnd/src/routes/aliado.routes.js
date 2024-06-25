import { Router } from "express";
import {postAliado} from "../controllers/aliado.controllers.js";


const router = Router();

router.post('/aliado-nuevo',postAliado);

export default router;