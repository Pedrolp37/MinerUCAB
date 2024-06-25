import { Router } from "express";
import  {getProjectsProgress, getProjects, 
        getMineralsConfiguration,getEmpleado,
        getMineralName, getMineralConfig, getAliados, getCliente} from '../controllers/lista.controllers.js';

const router = Router();
//Rutas
router.get('/projects-progress',getProjectsProgress);

router.get('/projects/:status', getProjects);

router.get('/configuracion-mineral',getMineralsConfiguration);

router.get('/empleados', getEmpleado);

router.get('/clientes', getCliente);

router.get('/mineral-name/:name',getMineralName);

router.get('/mineral-config/:id',getMineralConfig);

//ALIADOS
router.get('/aliados',getAliados);
export default router;