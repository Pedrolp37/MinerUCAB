import { Router } from "express";
import  {getProjectsProgress, getProjects, 
        getMineralsConfiguration,getEmpleado,
        getMineralName, getMineralConfig, getAliados, getClientes, getCliente,
        getInventario, getAliado, getProyectos} from '../controllers/lista.controllers.js';

const router = Router();
//Rutas
router.get('/proyectos/:offset',getProyectos);

router.get('/projects-progress/:offset',getProjectsProgress);

router.get('/projects/:status', getProjects);

router.get('/configuracion-mineral',getMineralsConfiguration);

router.get('/empleados/:offset', getEmpleado);

router.get('/clientes/:offset', getClientes);

router.get('/cliente/:dni', getCliente);

router.get('/mineral-name/:name',getMineralName);

router.get('/mineral-config/:id',getMineralConfig);

router.get('/manejo-inventario/:offset',getInventario);

//ALIADOS
router.get('/aliados/:offset',getAliados);

router.get('/aliado/:id', getAliado)

export default router;